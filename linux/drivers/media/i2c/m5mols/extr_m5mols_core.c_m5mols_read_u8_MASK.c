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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct v4l2_subdev*,int,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*) ; 

int FUNC3(struct v4l2_subdev *sd, u32 reg, u8 *val)
{
	u32 val_32;
	int ret;

	if (FUNC0(reg) != 1) {
		FUNC2(sd, "Wrong data size\n");
		return -EINVAL;
	}

	ret = FUNC1(sd, FUNC0(reg), reg, &val_32);
	if (ret)
		return ret;

	*val = (u8)val_32;
	return ret;
}