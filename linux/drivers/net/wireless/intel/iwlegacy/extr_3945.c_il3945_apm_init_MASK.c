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
struct il_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APMG_PS_CTRL_REG ; 
 int /*<<< orphan*/  APMG_PS_CTRL_VAL_RESET_REQ ; 
 int /*<<< orphan*/  APMG_RTC_INT_MSK_REG ; 
 int /*<<< orphan*/  APMG_RTC_INT_STT_REG ; 
 int FUNC0 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct il_priv *il)
{
	int ret = FUNC0(il);

	/* Clear APMG (NIC's internal power management) interrupts */
	FUNC3(il, APMG_RTC_INT_MSK_REG, 0x0);
	FUNC3(il, APMG_RTC_INT_STT_REG, 0xFFFFFFFF);

	/* Reset radio chip */
	FUNC2(il, APMG_PS_CTRL_REG, APMG_PS_CTRL_VAL_RESET_REQ);
	FUNC4(5);
	FUNC1(il, APMG_PS_CTRL_REG, APMG_PS_CTRL_VAL_RESET_REQ);

	return ret;
}