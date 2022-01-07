
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_drvinfo {int bus_info; int driver; } ;


 char* dev_name (int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void netsec_et_get_drvinfo(struct net_device *net_device,
      struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, "netsec", sizeof(info->driver));
 strlcpy(info->bus_info, dev_name(net_device->dev.parent),
  sizeof(info->bus_info));
}
