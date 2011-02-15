//
// Copyright 2009-2011 Facebook
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "Three20Style/TTStyledButtonNode.h"

// Core
#import "Three20Core/TTCorePreprocessorMacros.h"


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
@implementation TTStyledButtonNode

@synthesize URL         = _URL;
@synthesize highlighted = _highlighted;


///////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithURL:(NSString*)URL {
  if (self = [self initWithText:nil URL:URL next:nil]) {
  }

  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithURL:(NSString*)URL next:(TTStyledNode*)nextSibling {
  if (self = [self initWithText:nil URL:URL next:nextSibling]) {
  }

  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithText:(NSString*)text URL:(NSString*)URL next:(TTStyledNode*)nextSibling {
  if (self = [super initWithText:text next:nextSibling]) {
    self.URL = URL;
  }

  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (id)init {
  if (self = [self initWithText:nil URL:nil next:nil]) {
  }

  return self;
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)dealloc {
  TT_RELEASE_SAFELY(_URL);

  [super dealloc];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
- (NSString*)description {
  return [NSString stringWithFormat:@"<%@>", _firstChild];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark TTStyledNode


///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)performDefaultAction {
  if (nil != _URL) {
    // TODO (jverkoey 04/20/2010): Remove dependency on UI.
    //TTOpenURL(_URL);
  }
}


@end
