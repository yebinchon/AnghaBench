
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_echo_ev_arg {int value; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int barrier; } ;
struct ath10k {TYPE_1__ wmi; } ;


 int ATH10K_DBG_WMI ;
 scalar_t__ ATH10K_WMI_BARRIER_ECHO_ID ;
 int ath10k_dbg (struct ath10k*,int ,char*,scalar_t__) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_pull_echo_ev (struct ath10k*,struct sk_buff*,struct wmi_echo_ev_arg*) ;
 int complete (int *) ;
 scalar_t__ le32_to_cpu (int ) ;

void ath10k_wmi_event_echo(struct ath10k *ar, struct sk_buff *skb)
{
 struct wmi_echo_ev_arg arg = {};
 int ret;

 ret = ath10k_wmi_pull_echo_ev(ar, skb, &arg);
 if (ret) {
  ath10k_warn(ar, "failed to parse echo: %d\n", ret);
  return;
 }

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi event echo value 0x%08x\n",
     le32_to_cpu(arg.value));

 if (le32_to_cpu(arg.value) == ATH10K_WMI_BARRIER_ECHO_ID)
  complete(&ar->wmi.barrier);
}
