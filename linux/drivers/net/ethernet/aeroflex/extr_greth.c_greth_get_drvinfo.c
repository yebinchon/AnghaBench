
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct greth_private {TYPE_2__* dev; } ;
struct ethtool_drvinfo {int fw_version; int bus_info; int version; int driver; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {char* name; } ;


 char* dev_driver_string (TYPE_2__*) ;
 struct greth_private* netdev_priv (struct net_device*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void greth_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 struct greth_private *greth = netdev_priv(dev);

 strlcpy(info->driver, dev_driver_string(greth->dev),
  sizeof(info->driver));
 strlcpy(info->version, "revision: 1.0", sizeof(info->version));
 strlcpy(info->bus_info, greth->dev->bus->name, sizeof(info->bus_info));
 strlcpy(info->fw_version, "N/A", sizeof(info->fw_version));
}
