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
struct ipw_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPW_BIT_INT_HOST_SRAM_READ_INT_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  IPW_GP_CNTRL_BIT_CLOCK_READY ; 
 int /*<<< orphan*/  IPW_GP_CNTRL_BIT_INIT_DONE ; 
 int /*<<< orphan*/  IPW_GP_CNTRL_RW ; 
 int /*<<< orphan*/  IPW_READ_INT_REGISTER ; 
 int /*<<< orphan*/  IPW_RESET_REG ; 
 int /*<<< orphan*/  IPW_RESET_REG_SW_RESET ; 
 int FUNC2 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct ipw_priv *priv)
{
	int rc;

	FUNC1(">>\n");
	/* reset */
	/*prvHwInitNic */
	/* set "initialization complete" bit to move adapter to D0 state */
	FUNC3(priv, IPW_GP_CNTRL_RW, IPW_GP_CNTRL_BIT_INIT_DONE);

	/* low-level PLL activation */
	FUNC4(priv, IPW_READ_INT_REGISTER,
		    IPW_BIT_INT_HOST_SRAM_READ_INT_REGISTER);

	/* wait for clock stabilization */
	rc = FUNC2(priv, IPW_GP_CNTRL_RW,
			  IPW_GP_CNTRL_BIT_CLOCK_READY, 250);
	if (rc < 0)
		FUNC0("FAILED wait for clock stablization\n");

	/* assert SW reset */
	FUNC3(priv, IPW_RESET_REG, IPW_RESET_REG_SW_RESET);

	FUNC5(10);

	/* set "initialization complete" bit to move adapter to D0 state */
	FUNC3(priv, IPW_GP_CNTRL_RW, IPW_GP_CNTRL_BIT_INIT_DONE);

	FUNC1(">>\n");
	return 0;
}