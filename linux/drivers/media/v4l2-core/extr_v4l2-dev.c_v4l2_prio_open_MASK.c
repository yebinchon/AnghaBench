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
struct v4l2_prio_state {int dummy; } ;
typedef  enum v4l2_priority { ____Placeholder_v4l2_priority } v4l2_priority ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_PRIORITY_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_prio_state*,int*,int /*<<< orphan*/ ) ; 

void FUNC1(struct v4l2_prio_state *global, enum v4l2_priority *local)
{
	FUNC0(global, local, V4L2_PRIORITY_DEFAULT);
}