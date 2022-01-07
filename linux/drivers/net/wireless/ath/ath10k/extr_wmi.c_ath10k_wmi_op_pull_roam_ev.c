
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_roam_ev_arg {int reason; int vdev_id; } ;
struct wmi_roam_ev {int reason; int vdev_id; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int EPROTO ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int ath10k_wmi_op_pull_roam_ev(struct ath10k *ar, struct sk_buff *skb,
          struct wmi_roam_ev_arg *arg)
{
 struct wmi_roam_ev *ev = (void *)skb->data;

 if (skb->len < sizeof(*ev))
  return -EPROTO;

 skb_pull(skb, sizeof(*ev));
 arg->vdev_id = ev->vdev_id;
 arg->reason = ev->reason;

 return 0;
}
