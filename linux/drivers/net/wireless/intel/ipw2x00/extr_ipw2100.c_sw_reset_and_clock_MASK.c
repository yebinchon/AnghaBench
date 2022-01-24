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
typedef  int u32 ;
struct ipw2100_priv {int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int EIO ; 
 int IPW_AUX_HOST_GP_CNTRL_BIT_CLOCK_READY ; 
 int IPW_AUX_HOST_GP_CNTRL_BIT_HOST_ALLOWS_STANDBY ; 
 int IPW_AUX_HOST_GP_CNTRL_BIT_INIT_DONE ; 
 int IPW_AUX_HOST_RESET_REG_PRINCETON_RESET ; 
 int IPW_AUX_HOST_RESET_REG_SW_RESET ; 
 int /*<<< orphan*/  IPW_REG_GP_CNTRL ; 
 int /*<<< orphan*/  IPW_REG_RESET_REG ; 
 int IPW_WAIT_CLOCK_STABILIZATION_DELAY ; 
 int IPW_WAIT_RESET_ARC_COMPLETE_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ipw2100_priv *priv)
{
	int i;
	u32 r;

	// assert s/w reset
	FUNC2(priv->net_dev, IPW_REG_RESET_REG,
		       IPW_AUX_HOST_RESET_REG_SW_RESET);

	// wait for clock stabilization
	for (i = 0; i < 1000; i++) {
		FUNC1(IPW_WAIT_RESET_ARC_COMPLETE_DELAY);

		// check clock ready bit
		FUNC0(priv->net_dev, IPW_REG_RESET_REG, &r);
		if (r & IPW_AUX_HOST_RESET_REG_PRINCETON_RESET)
			break;
	}

	if (i == 1000)
		return -EIO;	// TODO: better error value

	/* set "initialization complete" bit to move adapter to
	 * D0 state */
	FUNC2(priv->net_dev, IPW_REG_GP_CNTRL,
		       IPW_AUX_HOST_GP_CNTRL_BIT_INIT_DONE);

	/* wait for clock stabilization */
	for (i = 0; i < 10000; i++) {
		FUNC1(IPW_WAIT_CLOCK_STABILIZATION_DELAY * 4);

		/* check clock ready bit */
		FUNC0(priv->net_dev, IPW_REG_GP_CNTRL, &r);
		if (r & IPW_AUX_HOST_GP_CNTRL_BIT_CLOCK_READY)
			break;
	}

	if (i == 10000)
		return -EIO;	/* TODO: better error value */

	/* set D0 standby bit */
	FUNC0(priv->net_dev, IPW_REG_GP_CNTRL, &r);
	FUNC2(priv->net_dev, IPW_REG_GP_CNTRL,
		       r | IPW_AUX_HOST_GP_CNTRL_BIT_HOST_ALLOWS_STANDBY);

	return 0;
}