
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {struct device* dev; } ;
struct device {int dummy; } ;


 scalar_t__ MDIO_AN_ADVERTISE ;
 scalar_t__ MDIO_AN_COMP_STAT ;
 scalar_t__ MDIO_CTRL1 ;
 scalar_t__ MDIO_DEVID1 ;
 scalar_t__ MDIO_DEVID2 ;
 scalar_t__ MDIO_DEVS1 ;
 scalar_t__ MDIO_DEVS2 ;
 int MDIO_MMD_AN ;
 int MDIO_MMD_PCS ;
 scalar_t__ MDIO_STAT1 ;
 int XMDIO_READ (struct xgbe_prv_data*,int ,scalar_t__) ;
 int dev_dbg (struct device*,char*,...) ;

__attribute__((used)) static void xgbe_dump_phy_registers(struct xgbe_prv_data *pdata)
{
 struct device *dev = pdata->dev;

 dev_dbg(dev, "\n************* PHY Reg dump **********************\n");

 dev_dbg(dev, "PCS Control Reg (%#06x) = %#06x\n", MDIO_CTRL1,
  XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_CTRL1));
 dev_dbg(dev, "PCS Status Reg (%#06x) = %#06x\n", MDIO_STAT1,
  XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_STAT1));
 dev_dbg(dev, "Phy Id (PHYS ID 1 %#06x)= %#06x\n", MDIO_DEVID1,
  XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_DEVID1));
 dev_dbg(dev, "Phy Id (PHYS ID 2 %#06x)= %#06x\n", MDIO_DEVID2,
  XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_DEVID2));
 dev_dbg(dev, "Devices in Package (%#06x)= %#06x\n", MDIO_DEVS1,
  XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_DEVS1));
 dev_dbg(dev, "Devices in Package (%#06x)= %#06x\n", MDIO_DEVS2,
  XMDIO_READ(pdata, MDIO_MMD_PCS, MDIO_DEVS2));

 dev_dbg(dev, "Auto-Neg Control Reg (%#06x) = %#06x\n", MDIO_CTRL1,
  XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_CTRL1));
 dev_dbg(dev, "Auto-Neg Status Reg (%#06x) = %#06x\n", MDIO_STAT1,
  XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_STAT1));
 dev_dbg(dev, "Auto-Neg Ad Reg 1 (%#06x) = %#06x\n",
  MDIO_AN_ADVERTISE,
  XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE));
 dev_dbg(dev, "Auto-Neg Ad Reg 2 (%#06x) = %#06x\n",
  MDIO_AN_ADVERTISE + 1,
  XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE + 1));
 dev_dbg(dev, "Auto-Neg Ad Reg 3 (%#06x) = %#06x\n",
  MDIO_AN_ADVERTISE + 2,
  XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_ADVERTISE + 2));
 dev_dbg(dev, "Auto-Neg Completion Reg (%#06x) = %#06x\n",
  MDIO_AN_COMP_STAT,
  XMDIO_READ(pdata, MDIO_MMD_AN, MDIO_AN_COMP_STAT));

 dev_dbg(dev, "\n*************************************************\n");
}
