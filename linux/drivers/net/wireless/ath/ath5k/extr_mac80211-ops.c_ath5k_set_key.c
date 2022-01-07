
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_key_conf {int flags; int cipher; int hw_key_idx; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath_common {int crypt_caps; } ;
struct ath5k_hw {int lock; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;


 int ATH_CRYPT_CAP_CIPHER_AESCCM ;

 int EINVAL ;
 int EOPNOTSUPP ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ;
 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int IEEE80211_KEY_FLAG_RX_MGMT ;
 int IEEE80211_KEY_FLAG_SW_MGMT_TX ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;





 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 scalar_t__ ath5k_modparam_nohwcrypt ;
 int ath_key_config (struct ath_common*,struct ieee80211_vif*,struct ieee80211_sta*,struct ieee80211_key_conf*) ;
 int ath_key_delete (struct ath_common*,struct ieee80211_key_conf*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int
ath5k_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
       struct ieee80211_vif *vif, struct ieee80211_sta *sta,
       struct ieee80211_key_conf *key)
{
 struct ath5k_hw *ah = hw->priv;
 struct ath_common *common = ath5k_hw_common(ah);
 int ret = 0;

 if (ath5k_modparam_nohwcrypt)
  return -EOPNOTSUPP;

 if (key->flags & IEEE80211_KEY_FLAG_RX_MGMT)
  return -EOPNOTSUPP;

 if (vif->type == NL80211_IFTYPE_ADHOC &&
     (key->cipher == 130 ||
      key->cipher == 131) &&
     !(key->flags & IEEE80211_KEY_FLAG_PAIRWISE)) {

  return -EOPNOTSUPP;
 }

 switch (key->cipher) {
 case 128:
 case 129:
 case 130:
  break;
 case 131:
  if (common->crypt_caps & ATH_CRYPT_CAP_CIPHER_AESCCM)
   break;
  return -EOPNOTSUPP;
 default:
  return -EOPNOTSUPP;
 }

 mutex_lock(&ah->lock);

 switch (cmd) {
 case 132:
  ret = ath_key_config(common, vif, sta, key);
  if (ret >= 0) {
   key->hw_key_idx = ret;

   key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;
   if (key->cipher == 130)
    key->flags |= IEEE80211_KEY_FLAG_GENERATE_MMIC;
   if (key->cipher == 131)
    key->flags |= IEEE80211_KEY_FLAG_SW_MGMT_TX;
   ret = 0;
  }
  break;
 case 133:
  ath_key_delete(common, key);
  break;
 default:
  ret = -EINVAL;
 }

 mutex_unlock(&ah->lock);
 return ret;
}
