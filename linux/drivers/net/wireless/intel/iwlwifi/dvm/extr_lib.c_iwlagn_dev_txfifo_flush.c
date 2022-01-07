
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int mutex; int hw; int trans; } ;


 int IWL_DEBUG_INFO (struct iwl_priv*,char*) ;
 int IWL_ERR (struct iwl_priv*,char*) ;
 int ieee80211_stop_queues (int ) ;
 int ieee80211_wake_queues (int ) ;
 int iwl_trans_wait_tx_queues_empty (int ,int) ;
 scalar_t__ iwlagn_txfifo_flush (struct iwl_priv*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void iwlagn_dev_txfifo_flush(struct iwl_priv *priv)
{
 mutex_lock(&priv->mutex);
 ieee80211_stop_queues(priv->hw);
 if (iwlagn_txfifo_flush(priv, 0)) {
  IWL_ERR(priv, "flush request fail\n");
  goto done;
 }
 IWL_DEBUG_INFO(priv, "wait transmit/flush all frames\n");
 iwl_trans_wait_tx_queues_empty(priv->trans, 0xffffffff);
done:
 ieee80211_wake_queues(priv->hw);
 mutex_unlock(&priv->mutex);
}
