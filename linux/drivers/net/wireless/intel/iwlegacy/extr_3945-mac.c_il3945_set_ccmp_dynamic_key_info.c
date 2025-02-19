
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_7__ {size_t bcast_id; } ;
struct il_priv {int sta_lock; TYPE_5__* stations; TYPE_1__ hw_params; } ;
struct ieee80211_key_conf {int keyidx; int hw_key_idx; int keylen; int key; int cipher; int flags; } ;
typedef int __le16 ;
struct TYPE_10__ {int modify_mask; } ;
struct TYPE_9__ {int key_flags; scalar_t__ key_offset; int key; } ;
struct TYPE_12__ {int mode; TYPE_4__ sta; TYPE_3__ key; } ;
struct TYPE_8__ {int key; int keylen; int cipher; } ;
struct TYPE_11__ {TYPE_6__ sta; TYPE_2__ keyinfo; } ;


 int CMD_ASYNC ;
 int D_INFO (char*) ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int STA_CONTROL_MODIFY_MSK ;
 int STA_KEY_FLG_CCMP ;
 int STA_KEY_FLG_ENCRYPT_MSK ;
 int STA_KEY_FLG_INVALID ;
 int STA_KEY_FLG_KEYID_POS ;
 int STA_KEY_FLG_MAP_KEY_MSK ;
 int STA_KEY_FLG_NO_ENC ;
 int STA_KEY_MULTICAST_MSK ;
 int STA_MODIFY_KEY_MASK ;
 int WARN (int,char*) ;
 scalar_t__ WEP_INVALID_OFFSET ;
 int cpu_to_le16 (int) ;
 scalar_t__ il_get_free_ucode_key_idx (struct il_priv*) ;
 int il_send_add_sta (struct il_priv*,TYPE_6__*,int ) ;
 int memcpy (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
il3945_set_ccmp_dynamic_key_info(struct il_priv *il,
     struct ieee80211_key_conf *keyconf, u8 sta_id)
{
 unsigned long flags;
 __le16 key_flags = 0;
 int ret;

 key_flags |= (STA_KEY_FLG_CCMP | STA_KEY_FLG_MAP_KEY_MSK);
 key_flags |= cpu_to_le16(keyconf->keyidx << STA_KEY_FLG_KEYID_POS);

 if (sta_id == il->hw_params.bcast_id)
  key_flags |= STA_KEY_MULTICAST_MSK;

 keyconf->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
 keyconf->hw_key_idx = keyconf->keyidx;
 key_flags &= ~STA_KEY_FLG_INVALID;

 spin_lock_irqsave(&il->sta_lock, flags);
 il->stations[sta_id].keyinfo.cipher = keyconf->cipher;
 il->stations[sta_id].keyinfo.keylen = keyconf->keylen;
 memcpy(il->stations[sta_id].keyinfo.key, keyconf->key, keyconf->keylen);

 memcpy(il->stations[sta_id].sta.key.key, keyconf->key, keyconf->keylen);

 if ((il->stations[sta_id].sta.key.
      key_flags & STA_KEY_FLG_ENCRYPT_MSK) == STA_KEY_FLG_NO_ENC)
  il->stations[sta_id].sta.key.key_offset =
      il_get_free_ucode_key_idx(il);



 WARN(il->stations[sta_id].sta.key.key_offset == WEP_INVALID_OFFSET,
      "no space for a new key");

 il->stations[sta_id].sta.key.key_flags = key_flags;
 il->stations[sta_id].sta.sta.modify_mask = STA_MODIFY_KEY_MASK;
 il->stations[sta_id].sta.mode = STA_CONTROL_MODIFY_MSK;

 D_INFO("hwcrypto: modify ucode station key info\n");

 ret = il_send_add_sta(il, &il->stations[sta_id].sta, CMD_ASYNC);

 spin_unlock_irqrestore(&il->sta_lock, flags);

 return ret;
}
