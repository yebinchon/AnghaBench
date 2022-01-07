
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 int DRV_NAME ;
 int DRV_VERSION ;
 int snprintf (int ,int,char*,int ) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void netdev_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, DRV_NAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 snprintf(info->bus_info, sizeof(info->bus_info),
  "PCMCIA 0x%lx", dev->base_addr);
}
