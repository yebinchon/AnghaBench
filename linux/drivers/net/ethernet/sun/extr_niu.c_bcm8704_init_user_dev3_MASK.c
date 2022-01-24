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
struct niu {int /*<<< orphan*/  phy_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM8704_USER_CONTROL ; 
 int /*<<< orphan*/  BCM8704_USER_DEV3_ADDR ; 
 int /*<<< orphan*/  BCM8704_USER_OPT_DIGITAL_CTRL ; 
 int /*<<< orphan*/  BCM8704_USER_PMD_TX_CONTROL ; 
 int USER_CONTROL_OBTMPFLT_LVL ; 
 int USER_CONTROL_OPBIASFLT_LVL ; 
 int USER_CONTROL_OPPRFLT_LVL ; 
 int USER_CONTROL_OPRXFLT_LVL ; 
 int USER_CONTROL_OPRXLOS_LVL ; 
 int USER_CONTROL_OPTXFLT_LVL ; 
 int USER_CONTROL_OPTXON_LVL ; 
 int USER_CONTROL_OPTXRST_LVL ; 
 int USER_CONTROL_RES1_SHIFT ; 
 int USER_ODIG_CTRL_GPIOS ; 
 int USER_ODIG_CTRL_GPIOS_SHIFT ; 
 int USER_PMD_TX_CTL_TSCK_LPWREN ; 
 int USER_PMD_TX_CTL_TX_DAC_TXCK_SH ; 
 int USER_PMD_TX_CTL_TX_DAC_TXD_SH ; 
 int USER_PMD_TX_CTL_XFP_CLKEN ; 
 int FUNC0 (struct niu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct niu *np)
{
	int err;

	err = FUNC3(np, np->phy_addr,
			 BCM8704_USER_DEV3_ADDR, BCM8704_USER_CONTROL,
			 (USER_CONTROL_OPTXRST_LVL |
			  USER_CONTROL_OPBIASFLT_LVL |
			  USER_CONTROL_OBTMPFLT_LVL |
			  USER_CONTROL_OPPRFLT_LVL |
			  USER_CONTROL_OPTXFLT_LVL |
			  USER_CONTROL_OPRXLOS_LVL |
			  USER_CONTROL_OPRXFLT_LVL |
			  USER_CONTROL_OPTXON_LVL |
			  (0x3f << USER_CONTROL_RES1_SHIFT)));
	if (err)
		return err;

	err = FUNC3(np, np->phy_addr,
			 BCM8704_USER_DEV3_ADDR, BCM8704_USER_PMD_TX_CONTROL,
			 (USER_PMD_TX_CTL_XFP_CLKEN |
			  (1 << USER_PMD_TX_CTL_TX_DAC_TXD_SH) |
			  (2 << USER_PMD_TX_CTL_TX_DAC_TXCK_SH) |
			  USER_PMD_TX_CTL_TSCK_LPWREN));
	if (err)
		return err;

	err = FUNC0(np, BCM8704_USER_CONTROL);
	if (err)
		return err;
	err = FUNC0(np, BCM8704_USER_PMD_TX_CONTROL);
	if (err)
		return err;

	err = FUNC2(np, np->phy_addr, BCM8704_USER_DEV3_ADDR,
			BCM8704_USER_OPT_DIGITAL_CTRL);
	if (err < 0)
		return err;
	err &= ~USER_ODIG_CTRL_GPIOS;
	err |= (0x3 << USER_ODIG_CTRL_GPIOS_SHIFT);
	err = FUNC3(np, np->phy_addr, BCM8704_USER_DEV3_ADDR,
			 BCM8704_USER_OPT_DIGITAL_CTRL, err);
	if (err)
		return err;

	FUNC1(1000);

	return 0;
}