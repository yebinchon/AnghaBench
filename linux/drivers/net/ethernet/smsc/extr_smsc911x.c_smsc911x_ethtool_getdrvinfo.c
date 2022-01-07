
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int SMSC_CHIPNAME ;
 int SMSC_DRV_VERSION ;
 int dev_name (int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void smsc911x_ethtool_getdrvinfo(struct net_device *dev,
     struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, SMSC_CHIPNAME, sizeof(info->driver));
 strlcpy(info->version, SMSC_DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, dev_name(dev->dev.parent),
  sizeof(info->bus_info));
}
