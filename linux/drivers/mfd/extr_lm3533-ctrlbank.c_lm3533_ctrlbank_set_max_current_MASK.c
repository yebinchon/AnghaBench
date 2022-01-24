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
typedef  scalar_t__ u16 ;
struct lm3533_ctrlbank {int /*<<< orphan*/  dev; int /*<<< orphan*/  lm3533; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ LM3533_MAX_CURRENT_MAX ; 
 scalar_t__ LM3533_MAX_CURRENT_MIN ; 
 scalar_t__ LM3533_MAX_CURRENT_STEP ; 
 int /*<<< orphan*/  LM3533_REG_MAX_CURRENT_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct lm3533_ctrlbank*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

int FUNC3(struct lm3533_ctrlbank *cb, u16 imax)
{
	u8 reg;
	u8 val;
	int ret;

	if (imax < LM3533_MAX_CURRENT_MIN || imax > LM3533_MAX_CURRENT_MAX)
		return -EINVAL;

	val = (imax - LM3533_MAX_CURRENT_MIN) / LM3533_MAX_CURRENT_STEP;

	reg = FUNC1(cb, LM3533_REG_MAX_CURRENT_BASE);
	ret = FUNC2(cb->lm3533, reg, val);
	if (ret)
		FUNC0(cb->dev, "failed to set max current\n");

	return ret;
}