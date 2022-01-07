
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 int trace_ath10k_wmi_dbglog (struct ath10k*,int ,int ) ;

int ath10k_wmi_event_debug_mesg(struct ath10k *ar, struct sk_buff *skb)
{
 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi event debug mesg len %d\n",
     skb->len);

 trace_ath10k_wmi_dbglog(ar, skb->data, skb->len);

 return 0;
}
