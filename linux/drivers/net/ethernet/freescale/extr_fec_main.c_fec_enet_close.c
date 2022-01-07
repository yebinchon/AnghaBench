
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int phydev; } ;
struct fec_enet_private {int quirks; TYPE_1__* pdev; int napi; } ;
struct TYPE_2__ {int dev; } ;


 int FEC_QUIRK_ERR006687 ;
 int fec_enet_clk_enable (struct net_device*,int) ;
 int fec_enet_free_buffers (struct net_device*) ;
 int fec_enet_update_ethtool_stats (struct net_device*) ;
 int fec_stop (struct net_device*) ;
 int imx6q_cpuidle_fec_irqs_unused () ;
 int napi_disable (int *) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_device_present (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int phy_disconnect (int ) ;
 int phy_stop (int ) ;
 int pinctrl_pm_select_sleep_state (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;

__attribute__((used)) static int
fec_enet_close(struct net_device *ndev)
{
 struct fec_enet_private *fep = netdev_priv(ndev);

 phy_stop(ndev->phydev);

 if (netif_device_present(ndev)) {
  napi_disable(&fep->napi);
  netif_tx_disable(ndev);
  fec_stop(ndev);
 }

 phy_disconnect(ndev->phydev);

 if (fep->quirks & FEC_QUIRK_ERR006687)
  imx6q_cpuidle_fec_irqs_unused();

 fec_enet_update_ethtool_stats(ndev);

 fec_enet_clk_enable(ndev, 0);
 pinctrl_pm_select_sleep_state(&fep->pdev->dev);
 pm_runtime_mark_last_busy(&fep->pdev->dev);
 pm_runtime_put_autosuspend(&fep->pdev->dev);

 fec_enet_free_buffers(ndev);

 return 0;
}
