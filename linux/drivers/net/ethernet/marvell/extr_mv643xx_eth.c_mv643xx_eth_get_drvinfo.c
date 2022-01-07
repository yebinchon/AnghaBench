
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 char* mv643xx_eth_driver_name ;
 char* mv643xx_eth_driver_version ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void mv643xx_eth_get_drvinfo(struct net_device *dev,
        struct ethtool_drvinfo *drvinfo)
{
 strlcpy(drvinfo->driver, mv643xx_eth_driver_name,
  sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, mv643xx_eth_driver_version,
  sizeof(drvinfo->version));
 strlcpy(drvinfo->fw_version, "N/A", sizeof(drvinfo->fw_version));
 strlcpy(drvinfo->bus_info, "platform", sizeof(drvinfo->bus_info));
}
