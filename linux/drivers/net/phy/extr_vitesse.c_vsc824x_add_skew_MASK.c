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
 int MII_VSC8244_EXTCON1_RX_SKEW ; 
 int MII_VSC8244_EXTCON1_RX_SKEW_MASK ; 
 int MII_VSC8244_EXTCON1_TX_SKEW ; 
 int MII_VSC8244_EXTCON1_TX_SKEW_MASK ; 
 int /*<<< orphan*/  MII_VSC8244_EXT_CON1 ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int err;
	int extcon;

	extcon = FUNC0(phydev, MII_VSC8244_EXT_CON1);

	if (extcon < 0)
		return extcon;

	extcon &= ~(MII_VSC8244_EXTCON1_TX_SKEW_MASK |
			MII_VSC8244_EXTCON1_RX_SKEW_MASK);

	extcon |= (MII_VSC8244_EXTCON1_TX_SKEW |
			MII_VSC8244_EXTCON1_RX_SKEW);

	err = FUNC1(phydev, MII_VSC8244_EXT_CON1, extcon);

	return err;
}