
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int attached_dev; } ;
struct lan78xx_net {int interface; } ;


 int MAC_RGMII_ID ;
 int MAC_RGMII_ID_TXC_DELAY_EN_ ;
 int MDIO_MMD_PCS ;
 int PHY_INTERFACE_MODE_RGMII_TXID ;
 int RGMII_TX_BYP_DLL ;
 int lan78xx_write_reg (struct lan78xx_net*,int ,int) ;
 struct lan78xx_net* netdev_priv (int ) ;
 int phy_read_mmd (struct phy_device*,int ,int) ;
 int phy_write_mmd (struct phy_device*,int ,int,int) ;

__attribute__((used)) static int lan8835_fixup(struct phy_device *phydev)
{
 int buf;
 int ret;
 struct lan78xx_net *dev = netdev_priv(phydev->attached_dev);


 buf = phy_read_mmd(phydev, MDIO_MMD_PCS, 0x8010);
 buf &= ~0x1800;
 buf |= 0x0800;
 phy_write_mmd(phydev, MDIO_MMD_PCS, 0x8010, buf);


 ret = lan78xx_write_reg(dev, MAC_RGMII_ID,
    MAC_RGMII_ID_TXC_DELAY_EN_);


 ret = lan78xx_write_reg(dev, RGMII_TX_BYP_DLL, 0x3D00);

 dev->interface = PHY_INTERFACE_MODE_RGMII_TXID;

 return 1;
}
