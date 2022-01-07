
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wmi_txe_notify_cmd {void* intvl; void* pkts; void* rate; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_SET_TXE_NOTIFY_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 void* cpu_to_le32 (int ) ;

int ath6kl_wmi_set_txe_notify(struct wmi *wmi, u8 idx,
         u32 rate, u32 pkts, u32 intvl)
{
 struct sk_buff *skb;
 struct wmi_txe_notify_cmd *cmd;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_txe_notify_cmd *) skb->data;
 cmd->rate = cpu_to_le32(rate);
 cmd->pkts = cpu_to_le32(pkts);
 cmd->intvl = cpu_to_le32(intvl);

 return ath6kl_wmi_cmd_send(wmi, idx, skb, WMI_SET_TXE_NOTIFY_CMDID,
       NO_SYNC_WMIFLAG);
}
