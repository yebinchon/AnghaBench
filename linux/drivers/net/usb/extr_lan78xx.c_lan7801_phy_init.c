
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int is_internal; int drv; } ;
struct lan78xx_net {int net; void* interface; int mdiobus; } ;
struct fixed_phy_status {int link; int duplex; int speed; } ;


 int DUPLEX_FULL ;
 int HW_CFG ;
 int HW_CFG_CLK125_EN_ ;
 int HW_CFG_REFCLK25_EN_ ;
 scalar_t__ IS_ERR (struct phy_device*) ;
 int MAC_RGMII_ID ;
 int MAC_RGMII_ID_TXC_DELAY_EN_ ;
 void* PHY_INTERFACE_MODE_RGMII ;
 int PHY_KSZ9031RNX ;
 int PHY_LAN8835 ;
 int PHY_POLL ;
 int RGMII_TX_BYP_DLL ;
 int SPEED_1000 ;
 struct phy_device* fixed_phy_register (int ,struct fixed_phy_status*,int *) ;
 int ksz9031rnx_fixup ;
 int lan78xx_read_reg (struct lan78xx_net*,int ,int*) ;
 int lan78xx_write_reg (struct lan78xx_net*,int ,int) ;
 int lan8835_fixup ;
 int netdev_dbg (int ,char*) ;
 int netdev_err (int ,char*) ;
 struct phy_device* phy_find_first (int ) ;
 int phy_register_fixup_for_uid (int ,int,int ) ;

__attribute__((used)) static struct phy_device *lan7801_phy_init(struct lan78xx_net *dev)
{
 u32 buf;
 int ret;
 struct fixed_phy_status fphy_status = {
  .link = 1,
  .speed = SPEED_1000,
  .duplex = DUPLEX_FULL,
 };
 struct phy_device *phydev;

 phydev = phy_find_first(dev->mdiobus);
 if (!phydev) {
  netdev_dbg(dev->net, "PHY Not Found!! Registering Fixed PHY\n");
  phydev = fixed_phy_register(PHY_POLL, &fphy_status, ((void*)0));
  if (IS_ERR(phydev)) {
   netdev_err(dev->net, "No PHY/fixed_PHY found\n");
   return ((void*)0);
  }
  netdev_dbg(dev->net, "Registered FIXED PHY\n");
  dev->interface = PHY_INTERFACE_MODE_RGMII;
  ret = lan78xx_write_reg(dev, MAC_RGMII_ID,
     MAC_RGMII_ID_TXC_DELAY_EN_);
  ret = lan78xx_write_reg(dev, RGMII_TX_BYP_DLL, 0x3D00);
  ret = lan78xx_read_reg(dev, HW_CFG, &buf);
  buf |= HW_CFG_CLK125_EN_;
  buf |= HW_CFG_REFCLK25_EN_;
  ret = lan78xx_write_reg(dev, HW_CFG, buf);
 } else {
  if (!phydev->drv) {
   netdev_err(dev->net, "no PHY driver found\n");
   return ((void*)0);
  }
  dev->interface = PHY_INTERFACE_MODE_RGMII;

  ret = phy_register_fixup_for_uid(PHY_KSZ9031RNX, 0xfffffff0,
       ksz9031rnx_fixup);
  if (ret < 0) {
   netdev_err(dev->net, "Failed to register fixup for PHY_KSZ9031RNX\n");
   return ((void*)0);
  }

  ret = phy_register_fixup_for_uid(PHY_LAN8835, 0xfffffff0,
       lan8835_fixup);
  if (ret < 0) {
   netdev_err(dev->net, "Failed to register fixup for PHY_LAN8835\n");
   return ((void*)0);
  }


  phydev->is_internal = 0;
 }
 return phydev;
}
