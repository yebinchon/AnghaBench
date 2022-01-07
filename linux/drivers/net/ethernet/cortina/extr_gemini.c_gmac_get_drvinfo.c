
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ dev_id; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 char* DRV_NAME ;
 char* DRV_VERSION ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void gmac_get_drvinfo(struct net_device *netdev,
        struct ethtool_drvinfo *info)
{
 strcpy(info->driver, DRV_NAME);
 strcpy(info->version, DRV_VERSION);
 strcpy(info->bus_info, netdev->dev_id ? "1" : "0");
}
