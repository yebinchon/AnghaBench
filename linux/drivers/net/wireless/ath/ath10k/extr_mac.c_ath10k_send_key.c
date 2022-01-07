
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wmi_vdev_install_key_arg {int key_txmic_len; int key_rxmic_len; int * key_data; int key_cipher; int const* macaddr; int key_flags; int key_len; int key_idx; int vdev_id; } ;
struct ieee80211_key_conf {int cipher; int flags; int * key; int keylen; int keyidx; } ;
struct ath10k_vif {struct ath10k* ar; int vdev_id; } ;
struct ath10k {int * wmi_key_cipher; int dev_flags; int conf_mutex; } ;
typedef enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;


 int ATH10K_FLAG_RAW_MODE ;
 int DISABLE_KEY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int IEEE80211_KEY_FLAG_GENERATE_IV ;
 int IEEE80211_KEY_FLAG_GENERATE_IV_MGMT ;
 int WARN_ON (int) ;
 size_t WMI_CIPHER_AES_CCM ;
 size_t WMI_CIPHER_AES_GCM ;
 size_t WMI_CIPHER_NONE ;
 size_t WMI_CIPHER_TKIP ;
 size_t WMI_CIPHER_WEP ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_vdev_install_key (struct ath10k*,struct wmi_vdev_install_key_arg*) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ath10k_send_key(struct ath10k_vif *arvif,
      struct ieee80211_key_conf *key,
      enum set_key_cmd cmd,
      const u8 *macaddr, u32 flags)
{
 struct ath10k *ar = arvif->ar;
 struct wmi_vdev_install_key_arg arg = {
  .vdev_id = arvif->vdev_id,
  .key_idx = key->keyidx,
  .key_len = key->keylen,
  .key_data = key->key,
  .key_flags = flags,
  .macaddr = macaddr,
 };

 lockdep_assert_held(&arvif->ar->conf_mutex);

 switch (key->cipher) {
 case 134:
  arg.key_cipher = ar->wmi_key_cipher[WMI_CIPHER_AES_CCM];
  key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV_MGMT;
  break;
 case 130:
  arg.key_cipher = ar->wmi_key_cipher[WMI_CIPHER_TKIP];
  arg.key_txmic_len = 8;
  arg.key_rxmic_len = 8;
  break;
 case 128:
 case 129:
  arg.key_cipher = ar->wmi_key_cipher[WMI_CIPHER_WEP];
  break;
 case 133:
  arg.key_cipher = ar->wmi_key_cipher[WMI_CIPHER_AES_CCM];
  break;
 case 132:
 case 131:
  arg.key_cipher = ar->wmi_key_cipher[WMI_CIPHER_AES_GCM];
  break;
 case 136:
 case 135:
 case 137:
 case 138:
  WARN_ON(1);
  return -EINVAL;
 default:
  ath10k_warn(ar, "cipher %d is not supported\n", key->cipher);
  return -EOPNOTSUPP;
 }

 if (test_bit(ATH10K_FLAG_RAW_MODE, &ar->dev_flags))
  key->flags |= IEEE80211_KEY_FLAG_GENERATE_IV;

 if (cmd == DISABLE_KEY) {
  arg.key_cipher = ar->wmi_key_cipher[WMI_CIPHER_NONE];
  arg.key_data = ((void*)0);
 }

 return ath10k_wmi_vdev_install_key(arvif->ar, &arg);
}
