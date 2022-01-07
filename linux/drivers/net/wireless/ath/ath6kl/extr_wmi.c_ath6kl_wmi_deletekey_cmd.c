
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wmi_delete_cipher_key_cmd {scalar_t__ key_index; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int EINVAL ;
 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_DELETE_CIPHER_KEY_CMDID ;
 scalar_t__ WMI_MAX_KEY_INDEX ;
 int ath6kl_wmi_cmd_send (struct wmi*,scalar_t__,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;

int ath6kl_wmi_deletekey_cmd(struct wmi *wmi, u8 if_idx, u8 key_index)
{
 struct sk_buff *skb;
 struct wmi_delete_cipher_key_cmd *cmd;
 int ret;

 if (key_index > WMI_MAX_KEY_INDEX)
  return -EINVAL;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_delete_cipher_key_cmd *) skb->data;
 cmd->key_index = key_index;

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_DELETE_CIPHER_KEY_CMDID,
      NO_SYNC_WMIFLAG);

 return ret;
}
