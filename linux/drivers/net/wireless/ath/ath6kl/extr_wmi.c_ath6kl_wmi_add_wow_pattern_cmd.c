
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wmi_add_wow_pattern_cmd {int filter_list_id; int filter_size; int filter_offset; int* filter; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_ADD_WOW_PATTERN_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int memcpy (int*,int const*,int) ;

int ath6kl_wmi_add_wow_pattern_cmd(struct wmi *wmi, u8 if_idx,
       u8 list_id, u8 filter_size,
       u8 filter_offset, const u8 *filter,
       const u8 *mask)
{
 struct sk_buff *skb;
 struct wmi_add_wow_pattern_cmd *cmd;
 u16 size;
 u8 *filter_mask;
 int ret;





 size = sizeof(*cmd) + (2 * filter_size);

 skb = ath6kl_wmi_get_new_buf(size);
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_add_wow_pattern_cmd *) skb->data;
 cmd->filter_list_id = list_id;
 cmd->filter_size = filter_size;
 cmd->filter_offset = filter_offset;

 memcpy(cmd->filter, filter, filter_size);

 filter_mask = (u8 *) (cmd->filter + filter_size);
 memcpy(filter_mask, mask, filter_size);

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_ADD_WOW_PATTERN_CMDID,
      NO_SYNC_WMIFLAG);

 return ret;
}
