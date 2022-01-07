
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct tlan_priv {scalar_t__* phy; size_t phy_num; TYPE_1__* adapter; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int TLAN_ADAPTER_UNMANAGED_PHY ;
 scalar_t__ TLAN_PHY_MAX_ADDR ;
 int netdev_info (struct net_device*,char*,...) ;
 struct tlan_priv* netdev_priv (struct net_device*) ;
 int pr_info (char*,...) ;
 int tlan_mii_read_reg (struct net_device*,scalar_t__,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void tlan_phy_print(struct net_device *dev)
{
 struct tlan_priv *priv = netdev_priv(dev);
 u16 i, data0, data1, data2, data3, phy;

 phy = priv->phy[priv->phy_num];

 if (priv->adapter->flags & TLAN_ADAPTER_UNMANAGED_PHY) {
  netdev_info(dev, "Unmanaged PHY\n");
 } else if (phy <= TLAN_PHY_MAX_ADDR) {
  netdev_info(dev, "PHY 0x%02x\n", phy);
  pr_info("   Off.  +0     +1     +2     +3\n");
  for (i = 0; i < 0x20; i += 4) {
   tlan_mii_read_reg(dev, phy, i, &data0);
   tlan_mii_read_reg(dev, phy, i + 1, &data1);
   tlan_mii_read_reg(dev, phy, i + 2, &data2);
   tlan_mii_read_reg(dev, phy, i + 3, &data3);
   pr_info("   0x%02x 0x%04hx 0x%04hx 0x%04hx 0x%04hx\n",
    i, data0, data1, data2, data3);
  }
 } else {
  netdev_info(dev, "Invalid PHY\n");
 }

}
