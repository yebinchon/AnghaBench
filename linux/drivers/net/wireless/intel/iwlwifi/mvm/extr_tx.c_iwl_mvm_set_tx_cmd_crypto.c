
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sk_buff {int * data; } ;
struct iwl_tx_cmd {int sec_ctl; int * key; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_key_conf {int cipher; int keyidx; int hw_key_idx; int keylen; int key; int tx_pn; } ;
typedef enum iwl_tx_cmd_sec_ctrl { ____Placeholder_iwl_tx_cmd_sec_ctrl } iwl_tx_cmd_sec_ctrl ;


 int TX_CMD_SEC_CCM ;
 int TX_CMD_SEC_EXT ;
 int TX_CMD_SEC_GCMP ;
 int TX_CMD_SEC_KEY128 ;
 int TX_CMD_SEC_KEY_FROM_TABLE ;
 int TX_CMD_SEC_TKIP ;
 int TX_CMD_SEC_WEP ;
 int TX_CMD_SEC_WEP_KEY_IDX_MSK ;
 int TX_CMD_SEC_WEP_KEY_IDX_POS ;







 int atomic64_inc_return (int *) ;
 int ieee80211_get_tkip_p2k (struct ieee80211_key_conf*,struct sk_buff*,int *) ;
 int ieee80211_tkip_add_iv (int *,struct ieee80211_key_conf*,int ) ;
 int iwl_mvm_set_tx_cmd_ccmp (struct ieee80211_tx_info*,struct iwl_tx_cmd*) ;
 int iwl_mvm_set_tx_cmd_pn (struct ieee80211_tx_info*,int *) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static void iwl_mvm_set_tx_cmd_crypto(struct iwl_mvm *mvm,
          struct ieee80211_tx_info *info,
          struct iwl_tx_cmd *tx_cmd,
          struct sk_buff *skb_frag,
          int hdrlen)
{
 struct ieee80211_key_conf *keyconf = info->control.hw_key;
 u8 *crypto_hdr = skb_frag->data + hdrlen;
 enum iwl_tx_cmd_sec_ctrl type = TX_CMD_SEC_CCM;
 u64 pn;

 switch (keyconf->cipher) {
 case 134:
  iwl_mvm_set_tx_cmd_ccmp(info, tx_cmd);
  iwl_mvm_set_tx_cmd_pn(info, crypto_hdr);
  break;

 case 130:
  tx_cmd->sec_ctl = TX_CMD_SEC_TKIP;
  pn = atomic64_inc_return(&keyconf->tx_pn);
  ieee80211_tkip_add_iv(crypto_hdr, keyconf, pn);
  ieee80211_get_tkip_p2k(keyconf, skb_frag, tx_cmd->key);
  break;

 case 129:
  tx_cmd->sec_ctl |= TX_CMD_SEC_KEY128;

 case 128:
  tx_cmd->sec_ctl |= TX_CMD_SEC_WEP |
   ((keyconf->keyidx << TX_CMD_SEC_WEP_KEY_IDX_POS) &
     TX_CMD_SEC_WEP_KEY_IDX_MSK);

  memcpy(&tx_cmd->key[3], keyconf->key, keyconf->keylen);
  break;
 case 132:
 case 131:
  type = TX_CMD_SEC_GCMP;

 case 133:






  tx_cmd->sec_ctl |= type | TX_CMD_SEC_KEY_FROM_TABLE;
  tx_cmd->key[0] = keyconf->hw_key_idx;
  iwl_mvm_set_tx_cmd_pn(info, crypto_hdr);
  break;
 default:
  tx_cmd->sec_ctl |= TX_CMD_SEC_EXT;
 }
}
