
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_ds_encrypt_key {int key_len; int is_igtk_key; int is_current_wep_key; int pn_len; int is_rx_seq_valid; int key_disable; int mac_addr; int pn; int key_material; int key_index; } ;
struct key_params {scalar_t__ cipher; int seq_len; int const* seq; } ;
typedef int encrypt_key ;


 int ETH_ALEN ;
 scalar_t__ WLAN_CIPHER_SUITE_AES_CMAC ;
 int memcpy (int ,int const*,int) ;
 int memset (struct mwifiex_ds_encrypt_key*,int ,int) ;
 int mwifiex_sec_ioctl_encrypt_key (struct mwifiex_private*,struct mwifiex_ds_encrypt_key*) ;

int mwifiex_set_encode(struct mwifiex_private *priv, struct key_params *kp,
         const u8 *key, int key_len, u8 key_index,
         const u8 *mac_addr, int disable)
{
 struct mwifiex_ds_encrypt_key encrypt_key;

 memset(&encrypt_key, 0, sizeof(encrypt_key));
 encrypt_key.key_len = key_len;
 encrypt_key.key_index = key_index;

 if (kp && kp->cipher == WLAN_CIPHER_SUITE_AES_CMAC)
  encrypt_key.is_igtk_key = 1;

 if (!disable) {
  if (key_len)
   memcpy(encrypt_key.key_material, key, key_len);
  else
   encrypt_key.is_current_wep_key = 1;

  if (mac_addr)
   memcpy(encrypt_key.mac_addr, mac_addr, ETH_ALEN);
  if (kp && kp->seq && kp->seq_len) {
   memcpy(encrypt_key.pn, kp->seq, kp->seq_len);
   encrypt_key.pn_len = kp->seq_len;
   encrypt_key.is_rx_seq_valid = 1;
  }
 } else {
  encrypt_key.key_disable = 1;
  if (mac_addr)
   memcpy(encrypt_key.mac_addr, mac_addr, ETH_ALEN);
 }

 return mwifiex_sec_ioctl_encrypt_key(priv, &encrypt_key);
}
