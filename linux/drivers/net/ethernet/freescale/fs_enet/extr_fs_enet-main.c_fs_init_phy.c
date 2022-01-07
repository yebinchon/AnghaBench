
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {int dummy; } ;
struct net_device {int dev; } ;
struct fs_enet_private {int oldduplex; TYPE_1__* fpi; scalar_t__ oldspeed; scalar_t__ oldlink; } ;
typedef int phy_interface_t ;
struct TYPE_2__ {int phy_node; scalar_t__ use_rmii; } ;


 int ENODEV ;
 int PHY_INTERFACE_MODE_MII ;
 int PHY_INTERFACE_MODE_RMII ;
 int dev_err (int *,char*) ;
 int fs_adjust_link ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;
 struct phy_device* of_phy_connect (struct net_device*,int ,int *,int ,int ) ;

__attribute__((used)) static int fs_init_phy(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);
 struct phy_device *phydev;
 phy_interface_t iface;

 fep->oldlink = 0;
 fep->oldspeed = 0;
 fep->oldduplex = -1;

 iface = fep->fpi->use_rmii ?
  PHY_INTERFACE_MODE_RMII : PHY_INTERFACE_MODE_MII;

 phydev = of_phy_connect(dev, fep->fpi->phy_node, &fs_adjust_link, 0,
    iface);
 if (!phydev) {
  dev_err(&dev->dev, "Could not attach to PHY\n");
  return -ENODEV;
 }

 return 0;
}
