
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int dev_name (int *) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ftgmac100_get_drvinfo(struct net_device *netdev,
      struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, dev_name(&netdev->dev), sizeof(info->bus_info));
}
