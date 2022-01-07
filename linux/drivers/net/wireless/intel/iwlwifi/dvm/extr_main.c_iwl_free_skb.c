
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iwl_priv {int hw; int trans; } ;
struct iwl_op_mode {int dummy; } ;
struct ieee80211_tx_info {int * driver_data; } ;


 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 struct iwl_priv* IWL_OP_MODE_GET_DVM (struct iwl_op_mode*) ;
 int ieee80211_free_txskb (int ,struct sk_buff*) ;
 int iwl_trans_free_tx_cmd (int ,int ) ;

__attribute__((used)) static void iwl_free_skb(struct iwl_op_mode *op_mode, struct sk_buff *skb)
{
 struct iwl_priv *priv = IWL_OP_MODE_GET_DVM(op_mode);
 struct ieee80211_tx_info *info;

 info = IEEE80211_SKB_CB(skb);
 iwl_trans_free_tx_cmd(priv->trans, info->driver_data[1]);
 ieee80211_free_txskb(priv->hw, skb);
}
