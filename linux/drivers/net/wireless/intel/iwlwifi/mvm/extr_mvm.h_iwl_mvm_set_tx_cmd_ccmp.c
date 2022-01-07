
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_tx_cmd {int key; int sec_ctl; } ;
struct TYPE_2__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_key_conf {int keylen; int key; } ;


 int TX_CMD_SEC_CCM ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static inline void iwl_mvm_set_tx_cmd_ccmp(struct ieee80211_tx_info *info,
        struct iwl_tx_cmd *tx_cmd)
{
 struct ieee80211_key_conf *keyconf = info->control.hw_key;

 tx_cmd->sec_ctl = TX_CMD_SEC_CCM;
 memcpy(tx_cmd->key, keyconf->key, keyconf->keylen);
}
