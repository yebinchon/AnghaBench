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
struct il_priv {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int /*<<< orphan*/  CSR_GP_CNTRL_REG_FLAG_INIT_DONE ; 
 int /*<<< orphan*/  CSR_RESET ; 
 int /*<<< orphan*/  CSR_RESET_REG_FLAG_SW_RESET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void
FUNC6(struct il_priv *il)
{
	FUNC4(&il->reg_lock);

	FUNC0("Stop card, put in low power state\n");

	/* Stop device's DMA activity */
	FUNC1(il);

	/* Reset the entire device */
	FUNC3(il, CSR_RESET, CSR_RESET_REG_FLAG_SW_RESET);

	FUNC5(10);

	/*
	 * Clear "initialization complete" bit to move adapter from
	 * D0A* (powered-up Active) --> D0U* (Uninitialized) state.
	 */
	FUNC2(il, CSR_GP_CNTRL, CSR_GP_CNTRL_REG_FLAG_INIT_DONE);
}