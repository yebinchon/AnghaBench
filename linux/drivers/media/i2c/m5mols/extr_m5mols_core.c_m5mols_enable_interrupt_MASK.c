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
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;
struct m5mols_info {int dummy; } ;

/* Variables and functions */
 int REG_INT_AF ; 
 int /*<<< orphan*/  SYSTEM_INT_ENABLE ; 
 int /*<<< orphan*/  SYSTEM_INT_FACTOR ; 
 scalar_t__ FUNC0 (struct m5mols_info*) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 struct m5mols_info* FUNC3 (struct v4l2_subdev*) ; 

int FUNC4(struct v4l2_subdev *sd, u8 reg)
{
	struct m5mols_info *info = FUNC3(sd);
	u8 mask = FUNC0(info) ? REG_INT_AF : 0;
	u8 dummy;
	int ret;

	ret = FUNC1(sd, SYSTEM_INT_FACTOR, &dummy);
	if (!ret)
		ret = FUNC2(sd, SYSTEM_INT_ENABLE, reg & ~mask);
	return ret;
}