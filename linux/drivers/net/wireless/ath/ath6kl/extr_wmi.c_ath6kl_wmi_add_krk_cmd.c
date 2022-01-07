
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_add_krk_cmd {int krk; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_ADD_KRK_CMDID ;
 int WMI_KRK_LEN ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int memcpy (int ,int const*,int ) ;

int ath6kl_wmi_add_krk_cmd(struct wmi *wmi, u8 if_idx, const u8 *krk)
{
 struct sk_buff *skb;
 struct wmi_add_krk_cmd *cmd;
 int ret;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_add_krk_cmd *) skb->data;
 memcpy(cmd->krk, krk, WMI_KRK_LEN);

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_ADD_KRK_CMDID,
      NO_SYNC_WMIFLAG);

 return ret;
}
