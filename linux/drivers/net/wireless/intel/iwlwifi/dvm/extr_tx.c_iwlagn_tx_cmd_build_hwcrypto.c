
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iwl_tx_cmd {int sec_ctl; int * key; int tx_flags; } ;
struct iwl_priv {int dummy; } ;
struct TYPE_2__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ieee80211_key_conf {int cipher; int keyidx; int keylen; int key; } ;


 int IEEE80211_TX_CTL_AMPDU ;
 int IWL_DEBUG_TX (struct iwl_priv*,char*,int) ;
 int IWL_ERR (struct iwl_priv*,char*,int) ;
 int TX_CMD_FLG_AGG_CCMP_MSK ;
 int TX_CMD_SEC_CCM ;
 int TX_CMD_SEC_KEY128 ;
 int TX_CMD_SEC_MSK ;
 int TX_CMD_SEC_SHIFT ;
 int TX_CMD_SEC_TKIP ;
 int TX_CMD_SEC_WEP ;




 int ieee80211_get_tkip_p2k (struct ieee80211_key_conf*,struct sk_buff*,int *) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void iwlagn_tx_cmd_build_hwcrypto(struct iwl_priv *priv,
      struct ieee80211_tx_info *info,
      struct iwl_tx_cmd *tx_cmd,
      struct sk_buff *skb_frag)
{
 struct ieee80211_key_conf *keyconf = info->control.hw_key;

 switch (keyconf->cipher) {
 case 131:
  tx_cmd->sec_ctl = TX_CMD_SEC_CCM;
  memcpy(tx_cmd->key, keyconf->key, keyconf->keylen);
  if (info->flags & IEEE80211_TX_CTL_AMPDU)
   tx_cmd->tx_flags |= TX_CMD_FLG_AGG_CCMP_MSK;
  break;

 case 130:
  tx_cmd->sec_ctl = TX_CMD_SEC_TKIP;
  ieee80211_get_tkip_p2k(keyconf, skb_frag, tx_cmd->key);
  break;

 case 129:
  tx_cmd->sec_ctl |= TX_CMD_SEC_KEY128;

 case 128:
  tx_cmd->sec_ctl |= (TX_CMD_SEC_WEP |
   (keyconf->keyidx & TX_CMD_SEC_MSK) << TX_CMD_SEC_SHIFT);

  memcpy(&tx_cmd->key[3], keyconf->key, keyconf->keylen);

  IWL_DEBUG_TX(priv, "Configuring packet for WEP encryption "
        "with key %d\n", keyconf->keyidx);
  break;

 default:
  IWL_ERR(priv, "Unknown encode cipher %x\n", keyconf->cipher);
  break;
 }
}
