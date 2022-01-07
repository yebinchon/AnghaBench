
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_echo_event {int value; } ;
struct wmi_echo_ev_arg {int value; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;



__attribute__((used)) static int ath10k_wmi_op_pull_echo_ev(struct ath10k *ar,
          struct sk_buff *skb,
          struct wmi_echo_ev_arg *arg)
{
 struct wmi_echo_event *ev = (void *)skb->data;

 arg->value = ev->value;

 return 0;
}
