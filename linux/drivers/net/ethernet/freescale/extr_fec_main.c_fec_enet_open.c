
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dev; TYPE_2__* phydev; } ;
struct fec_enet_private {int quirks; int wol_flag; TYPE_1__* pdev; int napi; } ;
struct TYPE_5__ {scalar_t__ drv; } ;
struct TYPE_4__ {int dev; } ;


 int FEC_QUIRK_ERR006687 ;
 int FEC_WOL_FLAG_ENABLE ;
 int device_set_wakeup_enable (int *,int) ;
 int fec_enet_alloc_buffers (struct net_device*) ;
 int fec_enet_clk_enable (struct net_device*,int) ;
 int fec_enet_free_buffers (struct net_device*) ;
 int fec_enet_mii_probe (struct net_device*) ;
 int fec_restart (struct net_device*) ;
 int imx6q_cpuidle_fec_irqs_used () ;
 int napi_enable (int *) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int phy_reset_after_clk_enable (TYPE_2__*) ;
 int phy_start (TYPE_2__*) ;
 int pinctrl_pm_select_default_state (int *) ;
 int pinctrl_pm_select_sleep_state (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;

__attribute__((used)) static int
fec_enet_open(struct net_device *ndev)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 int ret;
 bool reset_again;

 ret = pm_runtime_get_sync(&fep->pdev->dev);
 if (ret < 0)
  return ret;

 pinctrl_pm_select_default_state(&fep->pdev->dev);
 ret = fec_enet_clk_enable(ndev, 1);
 if (ret)
  goto clk_enable;







 if (ndev->phydev && ndev->phydev->drv)
  reset_again = 0;
 else
  reset_again = 1;





 ret = fec_enet_alloc_buffers(ndev);
 if (ret)
  goto err_enet_alloc;


 fec_restart(ndev);


 ret = fec_enet_mii_probe(ndev);
 if (ret)
  goto err_enet_mii_probe;




 if (reset_again)
  phy_reset_after_clk_enable(ndev->phydev);

 if (fep->quirks & FEC_QUIRK_ERR006687)
  imx6q_cpuidle_fec_irqs_used();

 napi_enable(&fep->napi);
 phy_start(ndev->phydev);
 netif_tx_start_all_queues(ndev);

 device_set_wakeup_enable(&ndev->dev, fep->wol_flag &
     FEC_WOL_FLAG_ENABLE);

 return 0;

err_enet_mii_probe:
 fec_enet_free_buffers(ndev);
err_enet_alloc:
 fec_enet_clk_enable(ndev, 0);
clk_enable:
 pm_runtime_mark_last_busy(&fep->pdev->dev);
 pm_runtime_put_autosuspend(&fep->pdev->dev);
 pinctrl_pm_select_sleep_state(&fep->pdev->dev);
 return ret;
}
