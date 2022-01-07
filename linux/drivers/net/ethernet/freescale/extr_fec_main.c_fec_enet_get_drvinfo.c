
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dev; } ;
struct fec_enet_private {TYPE_3__* pdev; } ;
struct ethtool_drvinfo {int bus_info; int version; int driver; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct TYPE_4__ {char* name; } ;


 char* dev_name (int *) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void fec_enet_get_drvinfo(struct net_device *ndev,
     struct ethtool_drvinfo *info)
{
 struct fec_enet_private *fep = netdev_priv(ndev);

 strlcpy(info->driver, fep->pdev->dev.driver->name,
  sizeof(info->driver));
 strlcpy(info->version, "Revision: 1.0", sizeof(info->version));
 strlcpy(info->bus_info, dev_name(&ndev->dev), sizeof(info->bus_info));
}
