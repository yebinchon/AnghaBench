
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl8k_priv {int irq; int poll_rx_task; int poll_tx_task; int * beacon_skb; int watchdog_ba_handle; int finalize_join_worker; TYPE_1__* pdev; scalar_t__ regs; int hw_restart_in_progress; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
struct TYPE_2__ {int irq; } ;


 int INT_MAX ;
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_MASK ;
 int cancel_work_sync (int *) ;
 int dev_kfree_skb (int *) ;
 int free_irq (int ,struct ieee80211_hw*) ;
 int ieee80211_stop_queues (struct ieee80211_hw*) ;
 int iowrite32 (int ,scalar_t__) ;
 int mwl8k_cmd_radio_disable (struct ieee80211_hw*) ;
 int mwl8k_tx_queues (struct mwl8k_priv*) ;
 int mwl8k_txq_reclaim (struct ieee80211_hw*,int,int ,int) ;
 int tasklet_disable (int *) ;

__attribute__((used)) static void mwl8k_stop(struct ieee80211_hw *hw)
{
 struct mwl8k_priv *priv = hw->priv;
 int i;

 if (!priv->hw_restart_in_progress)
  mwl8k_cmd_radio_disable(hw);

 ieee80211_stop_queues(hw);


 iowrite32(0, priv->regs + MWL8K_HIU_A2H_INTERRUPT_MASK);
 if (priv->irq != -1) {
  free_irq(priv->pdev->irq, hw);
  priv->irq = -1;
 }


 cancel_work_sync(&priv->finalize_join_worker);
 cancel_work_sync(&priv->watchdog_ba_handle);
 if (priv->beacon_skb != ((void*)0))
  dev_kfree_skb(priv->beacon_skb);


 tasklet_disable(&priv->poll_tx_task);
 tasklet_disable(&priv->poll_rx_task);


 for (i = 0; i < mwl8k_tx_queues(priv); i++)
  mwl8k_txq_reclaim(hw, i, INT_MAX, 1);
}
