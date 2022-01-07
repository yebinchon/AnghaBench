
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct emac_instance {int cell_index; TYPE_2__* ofdev; } ;
struct TYPE_3__ {int of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 char* DRV_VERSION ;
 struct emac_instance* netdev_priv (struct net_device*) ;
 int snprintf (int ,int,char*,int,int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void emac_ethtool_get_drvinfo(struct net_device *ndev,
         struct ethtool_drvinfo *info)
{
 struct emac_instance *dev = netdev_priv(ndev);

 strlcpy(info->driver, "ibm_emac", sizeof(info->driver));
 strlcpy(info->version, DRV_VERSION, sizeof(info->version));
 snprintf(info->bus_info, sizeof(info->bus_info), "PPC 4xx EMAC-%d %pOF",
   dev->cell_index, dev->ofdev->dev.of_node);
}
