#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ov5695 {int /*<<< orphan*/  client; int /*<<< orphan*/  ctrl_handler; TYPE_1__* cur_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV5695_MODE_STREAMING ; 
 int /*<<< orphan*/  OV5695_REG_CTRL_MODE ; 
 int /*<<< orphan*/  OV5695_REG_VALUE_08BIT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ov5695_global_regs ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ov5695 *ov5695)
{
	int ret;

	ret = FUNC1(ov5695->client, ov5695_global_regs);
	if (ret)
		return ret;
	ret = FUNC1(ov5695->client, ov5695->cur_mode->reg_list);
	if (ret)
		return ret;

	/* In case these controls are set before streaming */
	ret = FUNC0(&ov5695->ctrl_handler);
	if (ret)
		return ret;

	return FUNC2(ov5695->client, OV5695_REG_CTRL_MODE,
				OV5695_REG_VALUE_08BIT, OV5695_MODE_STREAMING);
}