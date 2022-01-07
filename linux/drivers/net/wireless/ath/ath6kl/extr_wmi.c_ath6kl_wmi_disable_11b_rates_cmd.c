
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_disable_11b_rates_cmd {int disable; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ATH6KL_DBG_WMI ;
 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_DISABLE_11B_RATES_CMDID ;
 int ath6kl_dbg (int ,char*,int) ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;

int ath6kl_wmi_disable_11b_rates_cmd(struct wmi *wmi, bool disable)
{
 struct sk_buff *skb;
 struct wmi_disable_11b_rates_cmd *cmd;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 ath6kl_dbg(ATH6KL_DBG_WMI, "disable_11b_rates_cmd: disable=%u\n",
     disable);
 cmd = (struct wmi_disable_11b_rates_cmd *) skb->data;
 cmd->disable = disable ? 1 : 0;

 return ath6kl_wmi_cmd_send(wmi, 0, skb, WMI_DISABLE_11B_RATES_CMDID,
       NO_SYNC_WMIFLAG);
}
