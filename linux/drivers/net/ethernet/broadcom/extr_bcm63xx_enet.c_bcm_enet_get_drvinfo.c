
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 char* bcm_enet_driver_name ;
 char* bcm_enet_driver_version ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void bcm_enet_get_drvinfo(struct net_device *netdev,
     struct ethtool_drvinfo *drvinfo)
{
 strlcpy(drvinfo->driver, bcm_enet_driver_name, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, bcm_enet_driver_version,
  sizeof(drvinfo->version));
 strlcpy(drvinfo->fw_version, "N/A", sizeof(drvinfo->fw_version));
 strlcpy(drvinfo->bus_info, "bcm63xx", sizeof(drvinfo->bus_info));
}
