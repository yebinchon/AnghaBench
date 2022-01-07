
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct board_info {int dev; } ;
struct TYPE_2__ {int name; } ;


 int CARDNAME ;
 int DRV_VERSION ;
 int strlcpy (int ,int ,int) ;
 struct board_info* to_dm9000_board (struct net_device*) ;
 TYPE_1__* to_platform_device (int ) ;

__attribute__((used)) static void dm9000_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 struct board_info *dm = to_dm9000_board(dev);

 strlcpy(info->driver, CARDNAME, sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 strlcpy(info->bus_info, to_platform_device(dm->dev)->name,
  sizeof(info->bus_info));
}
