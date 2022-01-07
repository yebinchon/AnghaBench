
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_dfs_status_ev_arg {int status; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int EPROTO ;

__attribute__((used)) static int
ath10k_wmi_10_4_op_pull_dfs_status_ev(struct ath10k *ar, struct sk_buff *skb,
          struct wmi_dfs_status_ev_arg *arg)
{
 struct wmi_dfs_status_ev_arg *ev = (void *)skb->data;

 if (skb->len < sizeof(*ev))
  return -EPROTO;

 arg->status = ev->status;

 return 0;
}
