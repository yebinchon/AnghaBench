
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_enable_sched_scan_cmd {int enable; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int ATH6KL_DBG_WMI ;
 int ENOMEM ;
 int NO_SYNC_WMIFLAG ;
 int WMI_ENABLE_SCHED_SCAN_CMDID ;
 int ath6kl_dbg (int ,char*,char*,int ) ;
 int ath6kl_wmi_cmd_send (struct wmi*,int ,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;

int ath6kl_wmi_enable_sched_scan_cmd(struct wmi *wmi, u8 if_idx, bool enable)
{
 struct sk_buff *skb;
 struct wmi_enable_sched_scan_cmd *sc;
 int ret;

 skb = ath6kl_wmi_get_new_buf(sizeof(*sc));
 if (!skb)
  return -ENOMEM;

 ath6kl_dbg(ATH6KL_DBG_WMI, "%s scheduled scan on vif %d\n",
     enable ? "enabling" : "disabling", if_idx);
 sc = (struct wmi_enable_sched_scan_cmd *) skb->data;
 sc->enable = enable ? 1 : 0;

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb,
      WMI_ENABLE_SCHED_SCAN_CMDID,
      NO_SYNC_WMIFLAG);
 return ret;
}
