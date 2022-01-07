
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int eee; } ;
struct stmmac_priv {int tx_lpi_timer; int dev; int lock; TYPE_2__* hw; int eee_ctrl_timer; scalar_t__ eee_enabled; scalar_t__ eee_active; TYPE_1__ dma_cap; } ;
struct TYPE_4__ {scalar_t__ pcs; } ;


 int STMMAC_DEFAULT_LIT_LS ;
 int STMMAC_LPI_T (int ) ;
 scalar_t__ STMMAC_PCS_RGMII ;
 scalar_t__ STMMAC_PCS_RTBI ;
 scalar_t__ STMMAC_PCS_TBI ;
 int del_timer_sync (int *) ;
 int eee_timer ;
 int mod_timer (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_dbg (int ,char*) ;
 int stmmac_eee_ctrl_timer ;
 int stmmac_set_eee_timer (struct stmmac_priv*,TYPE_2__*,int ,int) ;
 int timer_setup (int *,int ,int ) ;

bool stmmac_eee_init(struct stmmac_priv *priv)
{
 int tx_lpi_timer = priv->tx_lpi_timer;




 if ((priv->hw->pcs == STMMAC_PCS_RGMII) ||
     (priv->hw->pcs == STMMAC_PCS_TBI) ||
     (priv->hw->pcs == STMMAC_PCS_RTBI))
  return 0;


 if (!priv->dma_cap.eee)
  return 0;

 mutex_lock(&priv->lock);


 if (!priv->eee_active) {
  if (priv->eee_enabled) {
   netdev_dbg(priv->dev, "disable EEE\n");
   del_timer_sync(&priv->eee_ctrl_timer);
   stmmac_set_eee_timer(priv, priv->hw, 0, tx_lpi_timer);
  }
  mutex_unlock(&priv->lock);
  return 0;
 }

 if (priv->eee_active && !priv->eee_enabled) {
  timer_setup(&priv->eee_ctrl_timer, stmmac_eee_ctrl_timer, 0);
  mod_timer(&priv->eee_ctrl_timer, STMMAC_LPI_T(eee_timer));
  stmmac_set_eee_timer(priv, priv->hw, STMMAC_DEFAULT_LIT_LS,
         tx_lpi_timer);
 }

 mutex_unlock(&priv->lock);
 netdev_dbg(priv->dev, "Energy-Efficient Ethernet initialized\n");
 return 1;
}
