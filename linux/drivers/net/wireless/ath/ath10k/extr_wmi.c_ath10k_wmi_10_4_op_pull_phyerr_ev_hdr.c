
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_phyerr_hdr_arg {int num_phyerrs; int buf_len; scalar_t__ phyerrs; void* tsf_u32; void* tsf_l32; } ;
struct wmi_10_4_phyerr_event {int tsf_u32; int tsf_l32; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int EPROTO ;
 void* __le32_to_cpu (int ) ;

__attribute__((used)) static int ath10k_wmi_10_4_op_pull_phyerr_ev_hdr(struct ath10k *ar,
       struct sk_buff *skb,
       struct wmi_phyerr_hdr_arg *arg)
{
 struct wmi_10_4_phyerr_event *ev = (void *)skb->data;

 if (skb->len < sizeof(*ev))
  return -EPROTO;


 arg->num_phyerrs = 1;

 arg->tsf_l32 = __le32_to_cpu(ev->tsf_l32);
 arg->tsf_u32 = __le32_to_cpu(ev->tsf_u32);
 arg->buf_len = skb->len;
 arg->phyerrs = skb->data;

 return 0;
}
