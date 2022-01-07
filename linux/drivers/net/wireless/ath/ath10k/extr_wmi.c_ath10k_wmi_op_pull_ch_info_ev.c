
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_chan_info_event {int cycle_count; int rx_clear_count; int noise_floor; int cmd_flags; int freq; int err_code; } ;
struct wmi_ch_info_ev_arg {int cycle_count; int rx_clear_count; int noise_floor; int cmd_flags; int freq; int err_code; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int EPROTO ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int ath10k_wmi_op_pull_ch_info_ev(struct ath10k *ar, struct sk_buff *skb,
      struct wmi_ch_info_ev_arg *arg)
{
 struct wmi_chan_info_event *ev = (void *)skb->data;

 if (skb->len < sizeof(*ev))
  return -EPROTO;

 skb_pull(skb, sizeof(*ev));
 arg->err_code = ev->err_code;
 arg->freq = ev->freq;
 arg->cmd_flags = ev->cmd_flags;
 arg->noise_floor = ev->noise_floor;
 arg->rx_clear_count = ev->rx_clear_count;
 arg->cycle_count = ev->cycle_count;

 return 0;
}
