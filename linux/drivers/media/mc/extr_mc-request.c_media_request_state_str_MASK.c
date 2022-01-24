#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum media_request_state { ____Placeholder_media_request_state } media_request_state ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ NR_OF_MEDIA_REQUEST_STATE ; 
 scalar_t__ FUNC2 (int) ; 
 char const** request_state ; 

__attribute__((used)) static const char *
FUNC3(enum media_request_state state)
{
	FUNC1(FUNC0(request_state) != NR_OF_MEDIA_REQUEST_STATE);

	if (FUNC2(state >= FUNC0(request_state)))
		return "invalid";
	return request_state[state];
}