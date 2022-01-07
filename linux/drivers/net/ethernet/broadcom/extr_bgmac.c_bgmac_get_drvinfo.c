
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int driver; } ;


 char* KBUILD_MODNAME ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void bgmac_get_drvinfo(struct net_device *net_dev,
         struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
 strlcpy(info->bus_info, "AXI", sizeof(info->bus_info));
}
