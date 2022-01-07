
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kobj; } ;
struct TYPE_4__ {TYPE_2__ dev; } ;
struct phy_device {int sysfs_links; TYPE_1__ mdio; struct net_device* attached_dev; } ;
struct TYPE_6__ {int kobj; } ;
struct net_device {TYPE_3__ dev; } ;


 int dev_err (TYPE_3__*,char*,int ,int) ;
 int kobject_name (int *) ;
 int sysfs_create_link (int *,int *,char*) ;
 int sysfs_create_link_nowarn (int *,int *,char*) ;

__attribute__((used)) static void phy_sysfs_create_links(struct phy_device *phydev)
{
 struct net_device *dev = phydev->attached_dev;
 int err;

 if (!dev)
  return;

 err = sysfs_create_link(&phydev->mdio.dev.kobj, &dev->dev.kobj,
    "attached_dev");
 if (err)
  return;

 err = sysfs_create_link_nowarn(&dev->dev.kobj,
           &phydev->mdio.dev.kobj,
           "phydev");
 if (err) {
  dev_err(&dev->dev, "could not add device link to %s err %d\n",
   kobject_name(&phydev->mdio.dev.kobj),
   err);



 }

 phydev->sysfs_links = 1;
}
