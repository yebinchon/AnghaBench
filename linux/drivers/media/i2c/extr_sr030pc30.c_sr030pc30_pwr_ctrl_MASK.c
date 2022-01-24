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
struct sr030pc30_info {int sleep; int i2c_reg_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_CTRL_REG ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 struct sr030pc30_info* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC2(struct v4l2_subdev *sd,
				     bool reset, bool sleep)
{
	struct sr030pc30_info *info = FUNC1(sd);
	u8 reg = sleep ? 0xF1 : 0xF0;
	int ret = 0;

	if (reset)
		ret = FUNC0(sd, POWER_CTRL_REG, reg | 0x02);
	if (!ret) {
		ret = FUNC0(sd, POWER_CTRL_REG, reg);
		if (!ret) {
			info->sleep = sleep;
			if (reset)
				info->i2c_reg_page = -1;
		}
	}
	return ret;
}