
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stmmac_priv {int phylink; int device; int lock; scalar_t__ mii; TYPE_1__* plat; scalar_t__ irq_wake; int hw; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ clk_ptp_ref; scalar_t__ pclk; scalar_t__ stmmac_clk; } ;


 int clk_prepare_enable (scalar_t__) ;
 struct net_device* dev_get_drvdata (struct device*) ;
 scalar_t__ device_may_wakeup (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int netif_device_attach (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phylink_mac_change (int ,int) ;
 int phylink_start (int ) ;
 int pinctrl_pm_select_default_state (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stmmac_clear_descriptors (struct stmmac_priv*) ;
 int stmmac_enable_all_queues (struct stmmac_priv*) ;
 int stmmac_hw_setup (struct net_device*,int) ;
 int stmmac_init_coalesce (struct stmmac_priv*) ;
 int stmmac_mdio_reset (scalar_t__) ;
 int stmmac_pmt (struct stmmac_priv*,int ,int ) ;
 int stmmac_reset_queues_param (struct stmmac_priv*) ;
 int stmmac_set_rx_mode (struct net_device*) ;
 int stmmac_start_all_queues (struct stmmac_priv*) ;

int stmmac_resume(struct device *dev)
{
 struct net_device *ndev = dev_get_drvdata(dev);
 struct stmmac_priv *priv = netdev_priv(ndev);

 if (!netif_running(ndev))
  return 0;







 if (device_may_wakeup(priv->device)) {
  mutex_lock(&priv->lock);
  stmmac_pmt(priv, priv->hw, 0);
  mutex_unlock(&priv->lock);
  priv->irq_wake = 0;
 } else {
  pinctrl_pm_select_default_state(priv->device);

  clk_prepare_enable(priv->plat->stmmac_clk);
  clk_prepare_enable(priv->plat->pclk);
  if (priv->plat->clk_ptp_ref)
   clk_prepare_enable(priv->plat->clk_ptp_ref);

  if (priv->mii)
   stmmac_mdio_reset(priv->mii);
 }

 netif_device_attach(ndev);

 mutex_lock(&priv->lock);

 stmmac_reset_queues_param(priv);

 stmmac_clear_descriptors(priv);

 stmmac_hw_setup(ndev, 0);
 stmmac_init_coalesce(priv);
 stmmac_set_rx_mode(ndev);

 stmmac_enable_all_queues(priv);

 stmmac_start_all_queues(priv);

 mutex_unlock(&priv->lock);

 if (!device_may_wakeup(priv->device)) {
  rtnl_lock();
  phylink_start(priv->phylink);
  rtnl_unlock();
 }

 phylink_mac_change(priv->phylink, 1);

 return 0;
}
