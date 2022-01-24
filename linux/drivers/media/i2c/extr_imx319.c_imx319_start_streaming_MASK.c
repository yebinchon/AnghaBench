#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct imx319_reg_list {int /*<<< orphan*/  num_of_regs; int /*<<< orphan*/  regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  ctrl_handler; } ;
struct imx319 {TYPE_2__ sd; TYPE_1__* cur_mode; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct imx319_reg_list reg_list; } ;

/* Variables and functions */
 int IMX319_MODE_STREAMING ; 
 int /*<<< orphan*/  IMX319_REG_DPGA_USE_GLOBAL_GAIN ; 
 int /*<<< orphan*/  IMX319_REG_MODE_SELECT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct imx319_reg_list imx319_global_setting ; 
 int FUNC2 (struct imx319*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct imx319*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(struct imx319 *imx319)
{
	struct i2c_client *client = FUNC4(&imx319->sd);
	const struct imx319_reg_list *reg_list;
	int ret;

	/* Global Setting */
	reg_list = &imx319_global_setting;
	ret = FUNC3(imx319, reg_list->regs, reg_list->num_of_regs);
	if (ret) {
		FUNC1(&client->dev, "failed to set global settings");
		return ret;
	}

	/* Apply default values of current mode */
	reg_list = &imx319->cur_mode->reg_list;
	ret = FUNC3(imx319, reg_list->regs, reg_list->num_of_regs);
	if (ret) {
		FUNC1(&client->dev, "failed to set mode");
		return ret;
	}

	/* set digital gain control to all color mode */
	ret = FUNC2(imx319, IMX319_REG_DPGA_USE_GLOBAL_GAIN, 1, 1);
	if (ret)
		return ret;

	/* Apply customized values from user */
	ret =  FUNC0(imx319->sd.ctrl_handler);
	if (ret)
		return ret;

	return FUNC2(imx319, IMX319_REG_MODE_SELECT,
				1, IMX319_MODE_STREAMING);
}