
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_svc_avail_ev_arg {int dummy; } ;
struct sk_buff {int len; int data; } ;
struct ath10k {int dummy; } ;


 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_tlv_iter (struct ath10k*,int ,int ,int ,struct wmi_svc_avail_ev_arg*) ;
 int ath10k_wmi_tlv_svc_avail_parse ;

__attribute__((used)) static int ath10k_wmi_tlv_op_pull_svc_avail(struct ath10k *ar,
         struct sk_buff *skb,
         struct wmi_svc_avail_ev_arg *arg)
{
 int ret;

 ret = ath10k_wmi_tlv_iter(ar, skb->data, skb->len,
      ath10k_wmi_tlv_svc_avail_parse, arg);

 if (ret) {
  ath10k_warn(ar, "failed to parse svc_avail tlv: %d\n", ret);
  return ret;
 }

 return 0;
}
