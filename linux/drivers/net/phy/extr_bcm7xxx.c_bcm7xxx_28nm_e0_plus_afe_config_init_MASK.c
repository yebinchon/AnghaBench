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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE_HPF_TRIM_OTHERS ; 
 int /*<<< orphan*/  AFE_RXCONFIG_1 ; 
 int /*<<< orphan*/  AFE_TX_CONFIG ; 
 int /*<<< orphan*/  AFE_VDCA_ICTRL_0 ; 
 int /*<<< orphan*/  DSP_TAP10 ; 
 int /*<<< orphan*/  MII_BRCM_CORE_BASE1E ; 
 int /*<<< orphan*/  FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	/* AFE_RXCONFIG_1, provide more margin for INL/DNL measurement */
	FUNC1(phydev, AFE_RXCONFIG_1, 0x9b2f);

	/* AFE_TX_CONFIG, set 100BT Cfeed=011 to improve rise/fall time */
	FUNC1(phydev, AFE_TX_CONFIG, 0x431);

	/* AFE_VDCA_ICTRL_0, set Iq=1101 instead of 0111 for AB symmetry */
	FUNC1(phydev, AFE_VDCA_ICTRL_0, 0xa7da);

	/* AFE_HPF_TRIM_OTHERS, set 100Tx/10BT to -4.5% swing and set rCal
	 * offset for HT=0 code
	 */
	FUNC1(phydev, AFE_HPF_TRIM_OTHERS, 0x00e3);

	/* CORE_BASE1E, force trim to overwrite and set I_ext trim to 0000 */
	FUNC2(phydev, MII_BRCM_CORE_BASE1E, 0x0010);

	/* DSP_TAP10, adjust bias current trim (+0% swing, +0 tick) */
	FUNC1(phydev, DSP_TAP10, 0x011b);

	/* Reset R_CAL/RC_CAL engine */
	FUNC0(phydev);

	return 0;
}