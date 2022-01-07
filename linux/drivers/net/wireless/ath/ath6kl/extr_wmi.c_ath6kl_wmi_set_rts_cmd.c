
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wmi_set_rts_cmd {int threshold; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_SET_RTS_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int cpu_to_le16 (int ) ;

int ath6kl_wmi_set_rts_cmd(struct wmi *wmi, u16 threshold)
{
 struct sk_buff *skb;
 struct wmi_set_rts_cmd *cmd;
 int ret;

 skb = ath6kl_wmi_get_new_buf(sizeof(struct wmi_set_rts_cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_set_rts_cmd *) skb->data;
 cmd->threshold = cpu_to_le16(threshold);

 ret = ath6kl_wmi_cmd_send(wmi, 0, skb, WMI_SET_RTS_CMDID,
      NO_SYNC_WMIFLAG);
 return ret;
}
