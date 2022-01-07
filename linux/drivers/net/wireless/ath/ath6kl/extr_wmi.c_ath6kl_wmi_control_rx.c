
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_cmd_hdr {int dummy; } ;
struct wmi {int dummy; } ;
struct sk_buff {int len; int data; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int ) ;
 int ath6kl_err (char*) ;
 int ath6kl_wmi_proc_events (struct wmi*,struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int trace_ath6kl_wmi_event (int ,int) ;

int ath6kl_wmi_control_rx(struct wmi *wmi, struct sk_buff *skb)
{
 if (WARN_ON(skb == ((void*)0)))
  return -EINVAL;

 if (skb->len < sizeof(struct wmi_cmd_hdr)) {
  ath6kl_err("bad packet 1\n");
  dev_kfree_skb(skb);
  return -EINVAL;
 }

 trace_ath6kl_wmi_event(skb->data, skb->len);

 return ath6kl_wmi_proc_events(wmi, skb);
}
