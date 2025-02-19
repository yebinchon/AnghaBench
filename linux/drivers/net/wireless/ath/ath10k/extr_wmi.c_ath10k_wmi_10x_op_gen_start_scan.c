
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_start_scan_arg {int dummy; } ;
struct wmi_10x_start_scan_cmd {int tlvs; int common; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,size_t) ;
 int ath10k_wmi_put_start_scan_common (int *,struct wmi_start_scan_arg const*) ;
 int ath10k_wmi_put_start_scan_tlvs (int *,struct wmi_start_scan_arg const*) ;
 int ath10k_wmi_start_scan_tlvs_len (struct wmi_start_scan_arg const*) ;
 int ath10k_wmi_start_scan_verify (struct wmi_start_scan_arg const*) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_10x_op_gen_start_scan(struct ath10k *ar,
     const struct wmi_start_scan_arg *arg)
{
 struct wmi_10x_start_scan_cmd *cmd;
 struct sk_buff *skb;
 size_t len;
 int ret;

 ret = ath10k_wmi_start_scan_verify(arg);
 if (ret)
  return ERR_PTR(ret);

 len = sizeof(*cmd) + ath10k_wmi_start_scan_tlvs_len(arg);
 skb = ath10k_wmi_alloc_skb(ar, len);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_10x_start_scan_cmd *)skb->data;

 ath10k_wmi_put_start_scan_common(&cmd->common, arg);
 ath10k_wmi_put_start_scan_tlvs(&cmd->tlvs, arg);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi 10x start scan\n");
 return skb;
}
