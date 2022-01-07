
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct iwl_priv {int mutex; TYPE_3__* trans; int status; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* trans_cfg; } ;
struct TYPE_5__ {TYPE_1__* base_params; } ;
struct TYPE_4__ {int num_of_queues; } ;


 int BIT (int ) ;
 int IWL_DEBUG_MAC80211 (struct iwl_priv*,char*) ;
 int IWL_DEBUG_TX (struct iwl_priv*,char*) ;
 int IWL_DEBUG_TX_QUEUES (struct iwl_priv*,char*,...) ;
 int IWL_DEFAULT_CMD_QUEUE_NUM ;
 int IWL_ERR (struct iwl_priv*,char*) ;
 int IWL_IPAN_CMD_QUEUE_NUM ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 int STATUS_EXIT_PENDING ;
 scalar_t__ iwl_is_rfkill (struct iwl_priv*) ;
 int iwl_trans_wait_tx_queues_empty (TYPE_3__*,int) ;
 scalar_t__ iwlagn_txfifo_flush (struct iwl_priv*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void iwlagn_mac_flush(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
        u32 queues, bool drop)
{
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);
 u32 scd_queues;

 mutex_lock(&priv->mutex);
 IWL_DEBUG_MAC80211(priv, "enter\n");

 if (test_bit(STATUS_EXIT_PENDING, &priv->status)) {
  IWL_DEBUG_TX(priv, "Aborting flush due to device shutdown\n");
  goto done;
 }
 if (iwl_is_rfkill(priv)) {
  IWL_DEBUG_TX(priv, "Aborting flush due to RF Kill\n");
  goto done;
 }

 scd_queues = BIT(priv->trans->trans_cfg->base_params->num_of_queues) - 1;
 scd_queues &= ~(BIT(IWL_IPAN_CMD_QUEUE_NUM) |
   BIT(IWL_DEFAULT_CMD_QUEUE_NUM));

 if (drop) {
  IWL_DEBUG_TX_QUEUES(priv, "Flushing SCD queues: 0x%x\n",
        scd_queues);
  if (iwlagn_txfifo_flush(priv, scd_queues)) {
   IWL_ERR(priv, "flush request fail\n");
   goto done;
  }
 }

 IWL_DEBUG_TX_QUEUES(priv, "wait transmit/flush all frames\n");
 iwl_trans_wait_tx_queues_empty(priv->trans, scd_queues);
done:
 mutex_unlock(&priv->mutex);
 IWL_DEBUG_MAC80211(priv, "leave\n");
}
