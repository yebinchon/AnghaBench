
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int driver; } ;


 int DRV_MODULE_NAME ;
 int DRV_MODULE_VERSION ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ep93xx_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));
}
