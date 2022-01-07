
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_debug_fw_stats_process (struct ath10k*,struct sk_buff*) ;

void ath10k_wmi_event_update_stats(struct ath10k *ar, struct sk_buff *skb)
{
 ath10k_dbg(ar, ATH10K_DBG_WMI, "WMI_UPDATE_STATS_EVENTID\n");
 ath10k_debug_fw_stats_process(ar, skb);
}
