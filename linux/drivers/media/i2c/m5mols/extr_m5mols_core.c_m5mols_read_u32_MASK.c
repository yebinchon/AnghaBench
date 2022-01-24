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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct v4l2_subdev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*) ; 

int FUNC3(struct v4l2_subdev *sd, u32 reg, u32 *val)
{
	if (FUNC0(reg) != 4) {
		FUNC2(sd, "Wrong data size\n");
		return -EINVAL;
	}

	return FUNC1(sd, FUNC0(reg), reg, val);
}