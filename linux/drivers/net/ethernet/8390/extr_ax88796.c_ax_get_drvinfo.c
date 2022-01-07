
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int name; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int strlcpy (int ,int ,int) ;
 struct platform_device* to_platform_device (int ) ;

__attribute__((used)) static void ax_get_drvinfo(struct net_device *dev,
      struct ethtool_drvinfo *info)
{
 struct platform_device *pdev = to_platform_device(dev->dev.parent);

 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, pdev->name, sizeof(info->bus_info));
}
