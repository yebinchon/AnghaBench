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
struct xgbe_prv_data {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ MDIO_AN_ADVERTISE ; 
 scalar_t__ MDIO_AN_COMP_STAT ; 
 scalar_t__ MDIO_CTRL1 ; 
 scalar_t__ MDIO_DEVID1 ; 
 scalar_t__ MDIO_DEVID2 ; 
 scalar_t__ MDIO_DEVS1 ; 
 scalar_t__ MDIO_DEVS2 ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  MDIO_MMD_PCS ; 
 scalar_t__ MDIO_STAT1 ; 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 

__attribute__((used)) static void FUNC2(struct xgbe_prv_data *pdata)
{
	struct device *dev = pdata->dev;

	FUNC1(dev, "\n************* PHY Reg dump **********************\n");

	FUNC1(dev, "PCS Control Reg (%#06x) = %#06x\n", MDIO_CTRL1,
		FUNC0(pdata, MDIO_MMD_PCS, MDIO_CTRL1));
	FUNC1(dev, "PCS Status Reg (%#06x) = %#06x\n", MDIO_STAT1,
		FUNC0(pdata, MDIO_MMD_PCS, MDIO_STAT1));
	FUNC1(dev, "Phy Id (PHYS ID 1 %#06x)= %#06x\n", MDIO_DEVID1,
		FUNC0(pdata, MDIO_MMD_PCS, MDIO_DEVID1));
	FUNC1(dev, "Phy Id (PHYS ID 2 %#06x)= %#06x\n", MDIO_DEVID2,
		FUNC0(pdata, MDIO_MMD_PCS, MDIO_DEVID2));
	FUNC1(dev, "Devices in Package (%#06x)= %#06x\n", MDIO_DEVS1,
		FUNC0(pdata, MDIO_MMD_PCS, MDIO_DEVS1));
	FUNC1(dev, "Devices in Package (%#06x)= %#06x\n", MDIO_DEVS2,
		FUNC0(pdata, MDIO_MMD_PCS, MDIO_DEVS2));

	FUNC1(dev, "Auto-Neg Control Reg (%#06x) = %#06x\n", MDIO_CTRL1,
		FUNC0(pdata, MDIO_MMD_AN, MDIO_CTRL1));
	FUNC1(dev, "Auto-Neg Status Reg (%#06x) = %#06x\n", MDIO_STAT1,
		FUNC0(pdata, MDIO_MMD_AN, MDIO_STAT1));
	FUNC1(dev, "Auto-Neg Ad Reg 1 (%#06x) = %#06x\n",
		MDIO_AN_ADVERTISE,
		FUNC0(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE));
	FUNC1(dev, "Auto-Neg Ad Reg 2 (%#06x) = %#06x\n",
		MDIO_AN_ADVERTISE + 1,
		FUNC0(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE + 1));
	FUNC1(dev, "Auto-Neg Ad Reg 3 (%#06x) = %#06x\n",
		MDIO_AN_ADVERTISE + 2,
		FUNC0(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE + 2));
	FUNC1(dev, "Auto-Neg Completion Reg (%#06x) = %#06x\n",
		MDIO_AN_COMP_STAT,
		FUNC0(pdata, MDIO_MMD_AN, MDIO_AN_COMP_STAT));

	FUNC1(dev, "\n*************************************************\n");
}