
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mii_phy {struct net_device* dev; } ;
struct emac_instance {TYPE_2__* phy_dev; TYPE_1__* ofdev; } ;
struct TYPE_4__ {int link; } ;
struct TYPE_3__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int ethtool_op_get_link (struct net_device*) ;
 struct emac_instance* netdev_priv (struct net_device*) ;
 int phy_read_status (TYPE_2__*) ;

__attribute__((used)) static int emac_mdio_poll_link(struct mii_phy *phy)
{
 struct net_device *ndev = phy->dev;
 struct emac_instance *dev = netdev_priv(ndev);
 int res;

 res = phy_read_status(dev->phy_dev);
 if (res) {
  dev_err(&dev->ofdev->dev, "link update failed (%d).", res);
  return ethtool_op_get_link(ndev);
 }

 return dev->phy_dev->link;
}
