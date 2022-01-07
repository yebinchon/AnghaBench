
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;


 char* DRV_NAME ;
 char* dev_name (int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void ks_get_drvinfo(struct net_device *netdev,
          struct ethtool_drvinfo *di)
{
 strlcpy(di->driver, DRV_NAME, sizeof(di->driver));
 strlcpy(di->version, "1.00", sizeof(di->version));
 strlcpy(di->bus_info, dev_name(netdev->dev.parent),
  sizeof(di->bus_info));
}
