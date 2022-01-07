
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_delete_cipher_key_cmd {int mac; int key_index; } ;
struct wil6210_vif {int mid; } ;
struct wil6210_priv {int dummy; } ;
typedef int cmd ;


 int WMI_DELETE_CIPHER_KEY_CMDID ;
 int WMI_MAC_LEN ;
 int memcpy (int ,void const*,int ) ;
 struct wil6210_priv* vif_to_wil (struct wil6210_vif*) ;
 int wmi_send (struct wil6210_priv*,int ,int ,struct wmi_delete_cipher_key_cmd*,int) ;

int wmi_del_cipher_key(struct wil6210_vif *vif, u8 key_index,
         const void *mac_addr, int key_usage)
{
 struct wil6210_priv *wil = vif_to_wil(vif);
 struct wmi_delete_cipher_key_cmd cmd = {
  .key_index = key_index,
 };

 if (mac_addr)
  memcpy(cmd.mac, mac_addr, WMI_MAC_LEN);

 return wmi_send(wil, WMI_DELETE_CIPHER_KEY_CMDID, vif->mid,
   &cmd, sizeof(cmd));
}
