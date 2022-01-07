
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ionic_lif {struct ionic* ionic; } ;
struct TYPE_3__ {int fw_version; } ;
struct TYPE_4__ {TYPE_1__ dev_info; } ;
struct ionic {TYPE_2__ idev; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 int IONIC_DRV_NAME ;
 int IONIC_DRV_VERSION ;
 int ionic_bus_info (struct ionic*) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void ionic_get_drvinfo(struct net_device *netdev,
         struct ethtool_drvinfo *drvinfo)
{
 struct ionic_lif *lif = netdev_priv(netdev);
 struct ionic *ionic = lif->ionic;

 strlcpy(drvinfo->driver, IONIC_DRV_NAME, sizeof(drvinfo->driver));
 strlcpy(drvinfo->version, IONIC_DRV_VERSION, sizeof(drvinfo->version));
 strlcpy(drvinfo->fw_version, ionic->idev.dev_info.fw_version,
  sizeof(drvinfo->fw_version));
 strlcpy(drvinfo->bus_info, ionic_bus_info(ionic),
  sizeof(drvinfo->bus_info));
}
