#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ov8856_reg_list {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  ctrl_handler; } ;
struct ov8856 {TYPE_2__ sd; TYPE_1__* cur_mode; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {struct ov8856_reg_list reg_list; } ;
struct TYPE_4__ {int link_freq_index; struct ov8856_reg_list reg_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV8856_MODE_STREAMING ; 
 int /*<<< orphan*/  OV8856_REG_MODE_SELECT ; 
 int /*<<< orphan*/  OV8856_REG_VALUE_08BIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* link_freq_configs ; 
 int FUNC2 (struct ov8856*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ov8856*,struct ov8856_reg_list const*) ; 
 struct i2c_client* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(struct ov8856 *ov8856)
{
	struct i2c_client *client = FUNC4(&ov8856->sd);
	const struct ov8856_reg_list *reg_list;
	int link_freq_index, ret;

	link_freq_index = ov8856->cur_mode->link_freq_index;
	reg_list = &link_freq_configs[link_freq_index].reg_list;
	ret = FUNC3(ov8856, reg_list);
	if (ret) {
		FUNC1(&client->dev, "failed to set plls");
		return ret;
	}

	reg_list = &ov8856->cur_mode->reg_list;
	ret = FUNC3(ov8856, reg_list);
	if (ret) {
		FUNC1(&client->dev, "failed to set mode");
		return ret;
	}

	ret = FUNC0(ov8856->sd.ctrl_handler);
	if (ret)
		return ret;

	ret = FUNC2(ov8856, OV8856_REG_MODE_SELECT,
			       OV8856_REG_VALUE_08BIT, OV8856_MODE_STREAMING);
	if (ret) {
		FUNC1(&client->dev, "failed to set stream");
		return ret;
	}

	return 0;
}