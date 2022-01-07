
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wmi_ap_set_mlme_cmd {int reason; int cmd; int mac; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ATH6KL_DBG_WMI ;
 int ENOMEM ;
 int ETH_ALEN ;
 int NO_SYNC_WMIFLAG ;
 int WMI_AP_SET_MLME_CMDID ;
 int ath6kl_dbg (int ,char*,int ,int ) ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int cpu_to_le16 (int ) ;
 int memcpy (int ,int const*,int ) ;

int ath6kl_wmi_ap_set_mlme(struct wmi *wmip, u8 if_idx, u8 cmd, const u8 *mac,
      u16 reason)
{
 struct sk_buff *skb;
 struct wmi_ap_set_mlme_cmd *cm;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cm));
 if (!skb)
  return -ENOMEM;

 cm = (struct wmi_ap_set_mlme_cmd *) skb->data;
 memcpy(cm->mac, mac, ETH_ALEN);
 cm->reason = cpu_to_le16(reason);
 cm->cmd = cmd;

 ath6kl_dbg(ATH6KL_DBG_WMI, "ap_set_mlme: cmd=%d reason=%d\n", cm->cmd,
     cm->reason);

 return ath6kl_wmi_cmd_send(wmip, if_idx, skb, WMI_AP_SET_MLME_CMDID,
       NO_SYNC_WMIFLAG);
}
