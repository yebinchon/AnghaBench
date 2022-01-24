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
typedef  scalar_t__ u16 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  REG_FW_REVISION ; 
 int /*<<< orphan*/  REG_FW_VERSION ; 
 scalar_t__ S5K4ECGX_FW_VERSION ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,char*) ; 
 struct i2c_client* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd)
{
	struct i2c_client *client = FUNC2(sd);
	u16 hw_rev, fw_ver = 0;
	int ret;

	ret = FUNC0(client, REG_FW_VERSION, &fw_ver);
	if (ret < 0 || fw_ver != S5K4ECGX_FW_VERSION) {
		FUNC1(sd, "FW version check failed!\n");
		return -ENODEV;
	}

	ret = FUNC0(client, REG_FW_REVISION, &hw_rev);
	if (ret < 0)
		return ret;

	FUNC3(sd, "chip found FW ver: 0x%x, HW rev: 0x%x\n",
						fw_ver, hw_rev);
	return 0;
}