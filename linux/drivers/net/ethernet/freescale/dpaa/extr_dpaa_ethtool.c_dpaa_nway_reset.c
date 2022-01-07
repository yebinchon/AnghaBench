
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* phydev; } ;
struct TYPE_2__ {scalar_t__ autoneg; } ;


 int ENODEV ;
 int netdev_err (struct net_device*,char*,...) ;
 int phy_start_aneg (TYPE_1__*) ;

__attribute__((used)) static int dpaa_nway_reset(struct net_device *net_dev)
{
 int err;

 if (!net_dev->phydev) {
  netdev_err(net_dev, "phy device not initialized\n");
  return -ENODEV;
 }

 err = 0;
 if (net_dev->phydev->autoneg) {
  err = phy_start_aneg(net_dev->phydev);
  if (err < 0)
   netdev_err(net_dev, "phy_start_aneg() = %d\n",
       err);
 }

 return err;
}
