
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_set_inact_period_cmd {scalar_t__ num_null_func; int inact_period; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_AP_CONN_INACT_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int cpu_to_le32 (int) ;

int ath6kl_wmi_set_inact_period(struct wmi *wmi, u8 if_idx, int inact_timeout)
{
 struct sk_buff *skb;
 struct wmi_set_inact_period_cmd *cmd;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_set_inact_period_cmd *) skb->data;
 cmd->inact_period = cpu_to_le32(inact_timeout);
 cmd->num_null_func = 0;

 return ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_AP_CONN_INACT_CMDID,
       NO_SYNC_WMIFLAG);
}
