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
struct TYPE_4__ {int /*<<< orphan*/  ctrl_handler; } ;
struct ov7740 {TYPE_1__ subdev; TYPE_3__* frmsize; int /*<<< orphan*/  regmap; TYPE_2__* fmt; } ;
struct TYPE_6__ {int /*<<< orphan*/  reg_num; int /*<<< orphan*/  regs; } ;
struct TYPE_5__ {int /*<<< orphan*/  reg_num; int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ov7740 *ov7740)
{
	int ret;

	if (ov7740->fmt) {
		ret = FUNC1(ov7740->regmap,
					     ov7740->fmt->regs,
					     ov7740->fmt->reg_num);
		if (ret)
			return ret;
	}

	if (ov7740->frmsize) {
		ret = FUNC1(ov7740->regmap,
					     ov7740->frmsize->regs,
					     ov7740->frmsize->reg_num);
		if (ret)
			return ret;
	}

	return FUNC0(ov7740->subdev.ctrl_handler);
}