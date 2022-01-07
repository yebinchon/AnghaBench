
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_pdata {TYPE_1__* port_ops; int phy_mode; scalar_t__ mdio_driver; struct net_device* ndev; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int (* shutdown ) (struct xgene_enet_pdata*) ;} ;


 int dev_close (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ phy_interface_mode_is_rgmii (int ) ;
 struct xgene_enet_pdata* platform_get_drvdata (struct platform_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct xgene_enet_pdata*) ;
 int unregister_netdev (struct net_device*) ;
 int xgene_enet_delete_desc_rings (struct xgene_enet_pdata*) ;
 int xgene_enet_mdio_remove (struct xgene_enet_pdata*) ;
 int xgene_enet_phy_disconnect (struct xgene_enet_pdata*) ;

__attribute__((used)) static int xgene_enet_remove(struct platform_device *pdev)
{
 struct xgene_enet_pdata *pdata;
 struct net_device *ndev;

 pdata = platform_get_drvdata(pdev);
 ndev = pdata->ndev;

 rtnl_lock();
 if (netif_running(ndev))
  dev_close(ndev);
 rtnl_unlock();

 if (pdata->mdio_driver)
  xgene_enet_phy_disconnect(pdata);
 else if (phy_interface_mode_is_rgmii(pdata->phy_mode))
  xgene_enet_mdio_remove(pdata);

 unregister_netdev(ndev);
 xgene_enet_delete_desc_rings(pdata);
 pdata->port_ops->shutdown(pdata);
 free_netdev(ndev);

 return 0;
}
