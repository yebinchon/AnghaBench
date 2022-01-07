
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct device {int dummy; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int dev_name (struct device*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void netdev_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct device *hwdev = dev->dev.parent;

 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, dev_name(hwdev), sizeof(info->bus_info));
}
