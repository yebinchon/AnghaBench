
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct p54_common {int privacy_caps; int conf_mutex; int used_rxkeys; int rx_keycache_size; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__* addr; } ;
struct ieee80211_key_conf {int flags; int cipher; int hw_key_idx; int key; int keylen; int keyidx; } ;
struct ieee80211_hw {struct p54_common* priv; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;


 int BR_DESC_PRIV_CAP_AESCCMP ;
 int BR_DESC_PRIV_CAP_MICHAEL ;
 int BR_DESC_PRIV_CAP_TKIP ;
 int BR_DESC_PRIV_CAP_WEP ;
 int EOPNOTSUPP ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_RESERVE_TAILROOM ;
 int IEEE80211_KEY_FLAG_RX_MGMT ;
 scalar_t__ P54_CRYPTO_AESCCMP ;
 scalar_t__ P54_CRYPTO_TKIPMICHAEL ;
 scalar_t__ P54_CRYPTO_WEP ;
 int SET_KEY ;




 int bitmap_find_free_region (int ,int ,int ) ;
 int bitmap_release_region (int ,int,int ) ;
 scalar_t__ modparam_nohwcrypt ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int p54_upload_key (struct p54_common*,scalar_t__,int,int ,int ,scalar_t__*,int ) ;

__attribute__((used)) static int p54_set_key(struct ieee80211_hw *dev, enum set_key_cmd cmd,
         struct ieee80211_vif *vif, struct ieee80211_sta *sta,
         struct ieee80211_key_conf *key)
{
 struct p54_common *priv = dev->priv;
 int slot, ret = 0;
 u8 algo = 0;
 u8 *addr = ((void*)0);

 if (modparam_nohwcrypt)
  return -EOPNOTSUPP;

 if (key->flags & IEEE80211_KEY_FLAG_RX_MGMT) {







  return -EOPNOTSUPP;
 }

 mutex_lock(&priv->conf_mutex);
 if (cmd == SET_KEY) {
  switch (key->cipher) {
  case 130:
   if (!(priv->privacy_caps & (BR_DESC_PRIV_CAP_MICHAEL |
         BR_DESC_PRIV_CAP_TKIP))) {
    ret = -EOPNOTSUPP;
    goto out_unlock;
   }
   key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
   algo = P54_CRYPTO_TKIPMICHAEL;
   break;
  case 128:
  case 129:
   if (!(priv->privacy_caps & BR_DESC_PRIV_CAP_WEP)) {
    ret = -EOPNOTSUPP;
    goto out_unlock;
   }
   key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
   algo = P54_CRYPTO_WEP;
   break;
  case 131:
   if (!(priv->privacy_caps & BR_DESC_PRIV_CAP_AESCCMP)) {
    ret = -EOPNOTSUPP;
    goto out_unlock;
   }
   key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
   algo = P54_CRYPTO_AESCCMP;
   break;
  default:
   ret = -EOPNOTSUPP;
   goto out_unlock;
  }
  slot = bitmap_find_free_region(priv->used_rxkeys,
            priv->rx_keycache_size, 0);

  if (slot < 0) {
   key->hw_key_idx = 0xff;
   goto out_unlock;
  }

  key->flags |= IEEE80211_KEY_FLAG_RESERVE_TAILROOM;
 } else {
  slot = key->hw_key_idx;

  if (slot == 0xff) {


   goto out_unlock;
  }

  bitmap_release_region(priv->used_rxkeys, slot, 0);
  algo = 0;
 }

 if (sta)
  addr = sta->addr;

 ret = p54_upload_key(priv, algo, slot, key->keyidx,
        key->keylen, addr, key->key);
 if (ret) {
  bitmap_release_region(priv->used_rxkeys, slot, 0);
  ret = -EOPNOTSUPP;
  goto out_unlock;
 }

 key->hw_key_idx = slot;

out_unlock:
 mutex_unlock(&priv->conf_mutex);
 return ret;
}
