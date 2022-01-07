
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_pdev_chan_info_req_cmd {int type; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;
typedef enum wmi_bss_survey_req_type { ____Placeholder_wmi_bss_survey_req_type } wmi_bss_survey_req_type ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int __cpu_to_le32 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_10_2_op_gen_pdev_bss_chan_info(struct ath10k *ar,
       enum wmi_bss_survey_req_type type)
{
 struct wmi_pdev_chan_info_req_cmd *cmd;
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_pdev_chan_info_req_cmd *)skb->data;
 cmd->type = __cpu_to_le32(type);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi pdev bss info request type %d\n", type);

 return skb;
}
