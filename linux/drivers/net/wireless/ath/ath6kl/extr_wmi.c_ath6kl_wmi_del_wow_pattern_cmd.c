
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wmi_del_wow_pattern_cmd {void* filter_id; void* filter_list_id; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_DEL_WOW_PATTERN_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 void* cpu_to_le16 (int ) ;

int ath6kl_wmi_del_wow_pattern_cmd(struct wmi *wmi, u8 if_idx,
       u16 list_id, u16 filter_id)
{
 struct sk_buff *skb;
 struct wmi_del_wow_pattern_cmd *cmd;
 int ret;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_del_wow_pattern_cmd *) skb->data;
 cmd->filter_list_id = cpu_to_le16(list_id);
 cmd->filter_id = cpu_to_le16(filter_id);

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_DEL_WOW_PATTERN_CMDID,
      NO_SYNC_WMIFLAG);
 return ret;
}
