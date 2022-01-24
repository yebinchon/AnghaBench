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
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VS6624_USER_CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd, int enable)
{
	if (enable)
		FUNC1(sd, VS6624_USER_CMD, 0x2);
	else
		FUNC1(sd, VS6624_USER_CMD, 0x4);
	FUNC0(100);
	return 0;
}