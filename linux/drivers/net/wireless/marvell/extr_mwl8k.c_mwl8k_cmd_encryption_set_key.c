
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct mwl8k_vif {TYPE_1__* wep_key_conf; } ;
struct mwl8k_cmd_set_key {int header; int action; int key_material; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_key_conf {size_t keyidx; int flags; int cipher; int keylen; struct ieee80211_key_conf* key; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int enabled; int key; } ;


 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int MAX_ENCR_KEY_LENGTH ;
 int MIC_KEY_LENGTH ;
 int MWL8K_ENCR_SET_GROUP_KEY ;
 int MWL8K_ENCR_SET_KEY ;
 struct mwl8k_vif* MWL8K_VIF (struct ieee80211_vif*) ;




 int cpu_to_le32 (int ) ;
 int kfree (struct mwl8k_cmd_set_key*) ;
 struct mwl8k_cmd_set_key* kzalloc (int,int ) ;
 int memcpy (int ,struct ieee80211_key_conf*,int) ;
 int mwl8k_encryption_set_cmd_info (struct mwl8k_cmd_set_key*,size_t*,struct ieee80211_key_conf*) ;
 int mwl8k_post_pervif_cmd (struct ieee80211_hw*,struct ieee80211_vif*,int *) ;

__attribute__((used)) static int mwl8k_cmd_encryption_set_key(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif,
      u8 *addr,
      struct ieee80211_key_conf *key)
{
 struct mwl8k_cmd_set_key *cmd;
 int rc;
 int keymlen;
 u32 action;
 u8 idx;
 struct mwl8k_vif *mwl8k_vif = MWL8K_VIF(vif);

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 rc = mwl8k_encryption_set_cmd_info(cmd, addr, key);
 if (rc < 0)
  goto done;

 idx = key->keyidx;

 if (key->flags & IEEE80211_KEY_FLAG_PAIRWISE)
  action = MWL8K_ENCR_SET_KEY;
 else
  action = MWL8K_ENCR_SET_GROUP_KEY;

 switch (key->cipher) {
 case 128:
 case 129:
  if (!mwl8k_vif->wep_key_conf[idx].enabled) {
   memcpy(mwl8k_vif->wep_key_conf[idx].key, key,
      sizeof(*key) + key->keylen);
   mwl8k_vif->wep_key_conf[idx].enabled = 1;
  }

  keymlen = key->keylen;
  action = MWL8K_ENCR_SET_KEY;
  break;
 case 130:
  keymlen = MAX_ENCR_KEY_LENGTH + 2 * MIC_KEY_LENGTH;
  break;
 case 131:
  keymlen = key->keylen;
  break;
 default:
  rc = -ENOTSUPP;
  goto done;
 }

 memcpy(cmd->key_material, key->key, keymlen);
 cmd->action = cpu_to_le32(action);

 rc = mwl8k_post_pervif_cmd(hw, vif, &cmd->header);
done:
 kfree(cmd);

 return rc;
}
