
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_add_cipher_key_cmd {int key_usage; int key_len; int mac; int key; int key_index; } ;
struct wil6210_vif {int mid; } ;
struct wil6210_priv {int dummy; } ;
typedef int cmd ;


 int EINVAL ;
 int WMI_ADD_CIPHER_KEY_CMDID ;
 int WMI_KEY_USE_APPLY_PTK ;
 int WMI_MAC_LEN ;
 int memcpy (int ,void const*,int) ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wmi_send (struct wil6210_priv*,int ,int ,struct wmi_add_cipher_key_cmd*,int) ;

int wmi_add_cipher_key(struct wil6210_vif *vif, u8 key_index,
         const void *mac_addr, int key_len, const void *key,
         int key_usage)
{
 struct wil6210_priv *wil = vif_to_wil(vif);
 struct wmi_add_cipher_key_cmd cmd = {
  .key_index = key_index,
  .key_usage = key_usage,
  .key_len = key_len,
 };

 if (key_len > sizeof(cmd.key))
  return -EINVAL;


 if ((key_len == 0 || !key) &&
     key_usage != WMI_KEY_USE_APPLY_PTK)
  return -EINVAL;

 if (key)
  memcpy(cmd.key, key, key_len);

 if (mac_addr)
  memcpy(cmd.mac, mac_addr, WMI_MAC_LEN);

 return wmi_send(wil, WMI_ADD_CIPHER_KEY_CMDID, vif->mid,
   &cmd, sizeof(cmd));
}
