
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_rdy_ev_arg {int mac_addr; int status; int abi_version; int sw_version; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int unified_ready; } ;
struct ath10k {TYPE_1__ wmi; int mac_addr; } ;


 int ATH10K_DBG_WMI ;
 int __le32_to_cpu (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ,int ) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_pull_rdy (struct ath10k*,struct sk_buff*,struct wmi_rdy_ev_arg*) ;
 int complete (int *) ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ is_zero_ether_addr (int ) ;

int ath10k_wmi_event_ready(struct ath10k *ar, struct sk_buff *skb)
{
 struct wmi_rdy_ev_arg arg = {};
 int ret;

 ret = ath10k_wmi_pull_rdy(ar, skb, &arg);
 if (ret) {
  ath10k_warn(ar, "failed to parse ready event: %d\n", ret);
  return ret;
 }

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi event ready sw_version %u abi_version %u mac_addr %pM status %d\n",
     __le32_to_cpu(arg.sw_version),
     __le32_to_cpu(arg.abi_version),
     arg.mac_addr,
     __le32_to_cpu(arg.status));

 if (is_zero_ether_addr(ar->mac_addr))
  ether_addr_copy(ar->mac_addr, arg.mac_addr);
 complete(&ar->wmi.unified_ready);
 return 0;
}
