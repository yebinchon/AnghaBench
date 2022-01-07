
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int MVPP2_DRIVER_NAME ;
 int MVPP2_DRIVER_VERSION ;
 int dev_name (int *) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void mvpp2_ethtool_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *drvinfo)
{
 strlcpy(drvinfo->driver, MVPP2_DRIVER_NAME,
  sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, MVPP2_DRIVER_VERSION,
  sizeof(drvinfo->version));
 strlcpy(drvinfo->bus_info, dev_name(&dev->dev),
  sizeof(drvinfo->bus_info));
}
