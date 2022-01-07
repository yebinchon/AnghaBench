
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int hw; int trans; int beacon_skb; int * workqueue; int nvm_data; int eeprom_blob; } ;
struct iwl_op_mode {int dummy; } ;


 int IWL_DEBUG_INFO (struct iwl_priv*,char*) ;
 struct iwl_priv* IWL_OP_MODE_GET_DVM (struct iwl_op_mode*) ;
 int destroy_workqueue (int *) ;
 int dev_kfree_skb (int ) ;
 int flush_workqueue (int *) ;
 int ieee80211_free_hw (int ) ;
 int iwl_trans_op_mode_leave (int ) ;
 int iwl_tt_exit (struct iwl_priv*) ;
 int iwl_uninit_drv (struct iwl_priv*) ;
 int iwlagn_mac_unregister (struct iwl_priv*) ;
 int kfree (int ) ;

__attribute__((used)) static void iwl_op_mode_dvm_stop(struct iwl_op_mode *op_mode)
{
 struct iwl_priv *priv = IWL_OP_MODE_GET_DVM(op_mode);

 IWL_DEBUG_INFO(priv, "*** UNLOAD DRIVER ***\n");

 iwlagn_mac_unregister(priv);

 iwl_tt_exit(priv);

 kfree(priv->eeprom_blob);
 kfree(priv->nvm_data);


 flush_workqueue(priv->workqueue);




 destroy_workqueue(priv->workqueue);
 priv->workqueue = ((void*)0);

 iwl_uninit_drv(priv);

 dev_kfree_skb(priv->beacon_skb);

 iwl_trans_op_mode_leave(priv->trans);
 ieee80211_free_hw(priv->hw);
}
