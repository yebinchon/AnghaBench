
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {int irq_wake; int speed; int lock; TYPE_1__* plat; int device; int ioaddr; int phylink; int wolopts; int hw; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ stmmac_clk; scalar_t__ pclk; scalar_t__ clk_ptp_ref; } ;


 int SPEED_UNKNOWN ;
 int clk_disable_unprepare (scalar_t__) ;
 struct net_device* dev_get_drvdata (struct device*) ;
 scalar_t__ device_may_wakeup (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phylink_mac_change (int ,int) ;
 int phylink_stop (int ) ;
 int pinctrl_pm_select_sleep_state (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stmmac_disable_all_queues (struct stmmac_priv*) ;
 int stmmac_mac_set (struct stmmac_priv*,int ,int) ;
 int stmmac_pmt (struct stmmac_priv*,int ,int ) ;
 int stmmac_stop_all_dma (struct stmmac_priv*) ;
 int stmmac_stop_all_queues (struct stmmac_priv*) ;

int stmmac_suspend(struct device *dev)
{
 struct net_device *ndev = dev_get_drvdata(dev);
 struct stmmac_priv *priv = netdev_priv(ndev);

 if (!ndev || !netif_running(ndev))
  return 0;

 phylink_mac_change(priv->phylink, 0);

 mutex_lock(&priv->lock);

 netif_device_detach(ndev);
 stmmac_stop_all_queues(priv);

 stmmac_disable_all_queues(priv);


 stmmac_stop_all_dma(priv);


 if (device_may_wakeup(priv->device)) {
  stmmac_pmt(priv, priv->hw, priv->wolopts);
  priv->irq_wake = 1;
 } else {
  mutex_unlock(&priv->lock);
  rtnl_lock();
  phylink_stop(priv->phylink);
  rtnl_unlock();
  mutex_lock(&priv->lock);

  stmmac_mac_set(priv, priv->ioaddr, 0);
  pinctrl_pm_select_sleep_state(priv->device);

  if (priv->plat->clk_ptp_ref)
   clk_disable_unprepare(priv->plat->clk_ptp_ref);
  clk_disable_unprepare(priv->plat->pclk);
  clk_disable_unprepare(priv->plat->stmmac_clk);
 }
 mutex_unlock(&priv->lock);

 priv->speed = SPEED_UNKNOWN;
 return 0;
}
