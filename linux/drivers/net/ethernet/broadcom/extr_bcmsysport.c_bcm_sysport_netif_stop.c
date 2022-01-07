
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int phydev; } ;
struct TYPE_3__ {int work; } ;
struct TYPE_4__ {TYPE_1__ dim; } ;
struct bcm_sysport_priv {TYPE_2__ dim; int napi; } ;


 int bcm_sysport_mask_all_intrs (struct bcm_sysport_priv*) ;
 int cancel_work_sync (int *) ;
 int napi_disable (int *) ;
 struct bcm_sysport_priv* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int phy_stop (int ) ;

__attribute__((used)) static void bcm_sysport_netif_stop(struct net_device *dev)
{
 struct bcm_sysport_priv *priv = netdev_priv(dev);


 netif_tx_disable(dev);
 napi_disable(&priv->napi);
 cancel_work_sync(&priv->dim.dim.work);
 phy_stop(dev->phydev);


 bcm_sysport_mask_all_intrs(priv);
}
