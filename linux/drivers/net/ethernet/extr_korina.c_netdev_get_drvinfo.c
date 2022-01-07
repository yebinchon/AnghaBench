
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct korina_private {TYPE_1__* dev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct TYPE_2__ {int name; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 struct korina_private* netdev_priv (struct net_device*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void netdev_get_drvinfo(struct net_device *dev,
    struct ethtool_drvinfo *info)
{
 struct korina_private *lp = netdev_priv(dev);

 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, lp->dev->name, sizeof(info->bus_info));
}
