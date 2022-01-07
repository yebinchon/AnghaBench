
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int version; int bus_info; int driver; } ;


 char* DRV_VERSION ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void
ltq_etop_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, "Lantiq ETOP", sizeof(info->driver));
 strlcpy(info->bus_info, "internal", sizeof(info->bus_info));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
}
