
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 char* bcm_enet_driver_name ;
 char* bcm_enet_driver_version ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static void bcm_enetsw_get_drvinfo(struct net_device *netdev,
       struct ethtool_drvinfo *drvinfo)
{
 strncpy(drvinfo->driver, bcm_enet_driver_name, 32);
 strncpy(drvinfo->version, bcm_enet_driver_version, 32);
 strncpy(drvinfo->fw_version, "N/A", 32);
 strncpy(drvinfo->bus_info, "bcm63xx", 32);
}
