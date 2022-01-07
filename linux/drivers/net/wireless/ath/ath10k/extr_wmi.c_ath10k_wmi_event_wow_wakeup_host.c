
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_wow_ev_arg {int wake_reason; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int wakeup_completed; } ;
struct ath10k {TYPE_1__ wow; } ;


 int ATH10K_DBG_WMI ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_pull_wow_event (struct ath10k*,struct sk_buff*,struct wmi_wow_ev_arg*) ;
 int complete (int *) ;
 int wow_reason (int ) ;

void ath10k_wmi_event_wow_wakeup_host(struct ath10k *ar, struct sk_buff *skb)
{
 struct wmi_wow_ev_arg ev = {};
 int ret;

 complete(&ar->wow.wakeup_completed);

 ret = ath10k_wmi_pull_wow_event(ar, skb, &ev);
 if (ret) {
  ath10k_warn(ar, "failed to parse wow wakeup event: %d\n", ret);
  return;
 }

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wow wakeup host reason %s\n",
     wow_reason(ev.wake_reason));
}
