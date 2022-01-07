
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct wmi_peer_sta_kickout_event {TYPE_1__ peer_macaddr; } ;
struct wmi_peer_kick_ev_arg {int mac_addr; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int EPROTO ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int
ath10k_wmi_op_pull_peer_kick_ev(struct ath10k *ar, struct sk_buff *skb,
    struct wmi_peer_kick_ev_arg *arg)
{
 struct wmi_peer_sta_kickout_event *ev = (void *)skb->data;

 if (skb->len < sizeof(*ev))
  return -EPROTO;

 skb_pull(skb, sizeof(*ev));
 arg->mac_addr = ev->peer_macaddr.addr;

 return 0;
}
