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
struct v4l2_subdev {int dummy; } ;
struct m5mols_info {scalar_t__ mode; struct v4l2_subdev sd; } ;

/* Variables and functions */
 int EINVAL ; 
#define  REG_CAPTURE 130 
#define  REG_MONITOR 129 
#define  REG_PARAMETER 128 
 int /*<<< orphan*/  SYSTEM_SYSMODE ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC1 (struct v4l2_subdev*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,scalar_t__) ; 

int FUNC3(struct m5mols_info *info, u8 mode)
{
	struct v4l2_subdev *sd = &info->sd;
	int ret = -EINVAL;
	u8 reg;

	if (mode < REG_PARAMETER || mode > REG_CAPTURE)
		return ret;

	ret = FUNC0(sd, SYSTEM_SYSMODE, &reg);
	if (ret || reg == mode)
		return ret;

	switch (reg) {
	case REG_PARAMETER:
		ret = FUNC1(sd, REG_MONITOR);
		if (mode == REG_MONITOR)
			break;
		if (!ret)
			ret = FUNC1(sd, REG_CAPTURE);
		break;

	case REG_MONITOR:
		if (mode == REG_PARAMETER) {
			ret = FUNC1(sd, REG_PARAMETER);
			break;
		}

		ret = FUNC1(sd, REG_CAPTURE);
		break;

	case REG_CAPTURE:
		ret = FUNC1(sd, REG_MONITOR);
		if (mode == REG_MONITOR)
			break;
		if (!ret)
			ret = FUNC1(sd, REG_PARAMETER);
		break;

	default:
		FUNC2(sd, "Wrong mode: %d\n", mode);
	}

	if (!ret)
		info->mode = mode;

	return ret;
}