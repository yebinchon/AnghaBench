
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_scan_chan_list_cmd {struct wmi_channel* chan_info; int num_scan_chans; } ;
struct wmi_scan_chan_list_arg {int n_channels; struct wmi_channel_arg* channels; } ;
struct wmi_channel_arg {int dummy; } ;
struct wmi_channel {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int EINVAL ;
 struct sk_buff* ERR_PTR (int ) ;
 int __cpu_to_le32 (int) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;
 int ath10k_wmi_put_wmi_channel (struct wmi_channel*,struct wmi_channel_arg*) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_op_gen_scan_chan_list(struct ath10k *ar,
     const struct wmi_scan_chan_list_arg *arg)
{
 struct wmi_scan_chan_list_cmd *cmd;
 struct sk_buff *skb;
 struct wmi_channel_arg *ch;
 struct wmi_channel *ci;
 int len;
 int i;

 len = sizeof(*cmd) + arg->n_channels * sizeof(struct wmi_channel);

 skb = ath10k_wmi_alloc_skb(ar, len);
 if (!skb)
  return ERR_PTR(-EINVAL);

 cmd = (struct wmi_scan_chan_list_cmd *)skb->data;
 cmd->num_scan_chans = __cpu_to_le32(arg->n_channels);

 for (i = 0; i < arg->n_channels; i++) {
  ch = &arg->channels[i];
  ci = &cmd->chan_info[i];

  ath10k_wmi_put_wmi_channel(ci, ch);
 }

 return skb;
}
