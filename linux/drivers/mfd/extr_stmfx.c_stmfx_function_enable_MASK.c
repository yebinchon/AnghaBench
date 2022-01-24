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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct stmfx {int /*<<< orphan*/  map; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int STMFX_FUNC_ALTGPIO_HIGH ; 
 int STMFX_FUNC_ALTGPIO_LOW ; 
 int STMFX_FUNC_IDD ; 
 int STMFX_FUNC_TS ; 
 int /*<<< orphan*/  STMFX_REG_SYS_CTRL ; 
 int STMFX_REG_SYS_CTRL_ALTGPIO_EN ; 
 int STMFX_REG_SYS_CTRL_IDD_EN ; 
 int STMFX_REG_SYS_CTRL_TS_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct stmfx *stmfx, u32 func)
{
	u32 sys_ctrl;
	u8 mask;
	int ret;

	ret = FUNC1(stmfx->map, STMFX_REG_SYS_CTRL, &sys_ctrl);
	if (ret)
		return ret;

	/*
	 * IDD and TS have priority in STMFX FW, so if IDD and TS are enabled,
	 * ALTGPIO function is disabled by STMFX FW. If IDD or TS is enabled,
	 * the number of aGPIO available decreases. To avoid GPIO management
	 * disturbance, abort IDD or TS function enable in this case.
	 */
	if (((func & STMFX_FUNC_IDD) || (func & STMFX_FUNC_TS)) &&
	    (sys_ctrl & STMFX_REG_SYS_CTRL_ALTGPIO_EN)) {
		FUNC0(stmfx->dev, "ALTGPIO function already enabled\n");
		return -EBUSY;
	}

	/* If TS is enabled, aGPIO[3:0] cannot be used */
	if ((func & STMFX_FUNC_ALTGPIO_LOW) &&
	    (sys_ctrl & STMFX_REG_SYS_CTRL_TS_EN)) {
		FUNC0(stmfx->dev, "TS in use, aGPIO[3:0] unavailable\n");
		return -EBUSY;
	}

	/* If IDD is enabled, aGPIO[7:4] cannot be used */
	if ((func & STMFX_FUNC_ALTGPIO_HIGH) &&
	    (sys_ctrl & STMFX_REG_SYS_CTRL_IDD_EN)) {
		FUNC0(stmfx->dev, "IDD in use, aGPIO[7:4] unavailable\n");
		return -EBUSY;
	}

	mask = FUNC3(func);

	return FUNC2(stmfx->map, STMFX_REG_SYS_CTRL, mask, mask);
}