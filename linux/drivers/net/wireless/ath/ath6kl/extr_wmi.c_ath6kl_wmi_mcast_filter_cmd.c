
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_mcast_filter_cmd {int mcast_all_enable; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_MCAST_FILTER_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;

int ath6kl_wmi_mcast_filter_cmd(struct wmi *wmi, u8 if_idx, bool mc_all_on)
{
 struct sk_buff *skb;
 struct wmi_mcast_filter_cmd *cmd;
 int ret;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_mcast_filter_cmd *) skb->data;
 cmd->mcast_all_enable = mc_all_on;

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_MCAST_FILTER_CMDID,
      NO_SYNC_WMIFLAG);
 return ret;
}
