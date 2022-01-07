
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 char* DRIVER_NAME ;
 char* DRIVER_VERSION ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void pxa168_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, DRIVER_NAME, sizeof(info->driver));
 strlcpy(info->version, DRIVER_VERSION, sizeof(info->version));
 strlcpy(info->fw_version, "N/A", sizeof(info->fw_version));
 strlcpy(info->bus_info, "N/A", sizeof(info->bus_info));
}
