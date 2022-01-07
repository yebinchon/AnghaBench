
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct au1000_private {TYPE_1__* mac; } ;
struct TYPE_2__ {int mii_control; int mii_data; } ;


 int MAC_MII_BUSY ;
 int MAC_MII_READ ;
 int MAC_SET_MII_SELECT_PHY (int) ;
 int MAC_SET_MII_SELECT_REG (int) ;
 int mdelay (int) ;
 int netdev_err (struct net_device*,char*) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int readl (int* const) ;
 int writel (int,int* const) ;

__attribute__((used)) static int au1000_mdio_read(struct net_device *dev, int phy_addr, int reg)
{
 struct au1000_private *aup = netdev_priv(dev);
 u32 *const mii_control_reg = &aup->mac->mii_control;
 u32 *const mii_data_reg = &aup->mac->mii_data;
 u32 timedout = 20;
 u32 mii_control;

 while (readl(mii_control_reg) & MAC_MII_BUSY) {
  mdelay(1);
  if (--timedout == 0) {
   netdev_err(dev, "read_MII busy timeout!!\n");
   return -1;
  }
 }

 mii_control = MAC_SET_MII_SELECT_REG(reg) |
  MAC_SET_MII_SELECT_PHY(phy_addr) | MAC_MII_READ;

 writel(mii_control, mii_control_reg);

 timedout = 20;
 while (readl(mii_control_reg) & MAC_MII_BUSY) {
  mdelay(1);
  if (--timedout == 0) {
   netdev_err(dev, "mdio_read busy timeout!!\n");
   return -1;
  }
 }
 return readl(mii_data_reg);
}
