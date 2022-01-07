
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct set_dtim_cmd {int dtim_period; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_AP_SET_DTIM_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int cpu_to_le32 (int ) ;

int ath6kl_wmi_ap_set_dtim_cmd(struct wmi *wmi, u8 if_idx, u32 dtim_period)
{
 struct sk_buff *skb;
 struct set_dtim_cmd *cmd;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct set_dtim_cmd *) skb->data;

 cmd->dtim_period = cpu_to_le32(dtim_period);
 return ath6kl_wmi_cmd_send(wmi, if_idx, skb,
       WMI_AP_SET_DTIM_CMDID, NO_SYNC_WMIFLAG);
}
