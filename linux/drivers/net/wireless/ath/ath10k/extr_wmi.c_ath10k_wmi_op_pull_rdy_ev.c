
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct wmi_ready_event {TYPE_1__ mac_addr; int status; int abi_version; int sw_version; } ;
struct wmi_rdy_ev_arg {int mac_addr; int status; int abi_version; int sw_version; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int EPROTO ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int ath10k_wmi_op_pull_rdy_ev(struct ath10k *ar, struct sk_buff *skb,
         struct wmi_rdy_ev_arg *arg)
{
 struct wmi_ready_event *ev = (void *)skb->data;

 if (skb->len < sizeof(*ev))
  return -EPROTO;

 skb_pull(skb, sizeof(*ev));
 arg->sw_version = ev->sw_version;
 arg->abi_version = ev->abi_version;
 arg->status = ev->status;
 arg->mac_addr = ev->mac_addr.addr;

 return 0;
}
