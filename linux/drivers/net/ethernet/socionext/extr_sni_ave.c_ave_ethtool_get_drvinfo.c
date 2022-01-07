
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_drvinfo {int fw_version; int bus_info; int driver; } ;
struct device {TYPE_2__* driver; } ;
struct TYPE_4__ {int name; } ;


 int ave_hw_read_version (struct net_device*,int ,int) ;
 int dev_name (struct device*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ave_ethtool_get_drvinfo(struct net_device *ndev,
        struct ethtool_drvinfo *info)
{
 struct device *dev = ndev->dev.parent;

 strlcpy(info->driver, dev->driver->name, sizeof(info->driver));
 strlcpy(info->bus_info, dev_name(dev), sizeof(info->bus_info));
 ave_hw_read_version(ndev, info->fw_version, sizeof(info->fw_version));
}
