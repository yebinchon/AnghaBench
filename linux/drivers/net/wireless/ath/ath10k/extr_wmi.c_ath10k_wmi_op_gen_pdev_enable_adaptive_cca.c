
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wmi_pdev_set_adaptive_cca_params {void* cca_detect_margin; void* cca_detect_level; void* enable; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 void* __cpu_to_le32 (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_op_gen_pdev_enable_adaptive_cca(struct ath10k *ar, u8 enable,
        u32 detect_level, u32 detect_margin)
{
 struct wmi_pdev_set_adaptive_cca_params *cmd;
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_pdev_set_adaptive_cca_params *)skb->data;
 cmd->enable = __cpu_to_le32(enable);
 cmd->cca_detect_level = __cpu_to_le32(detect_level);
 cmd->cca_detect_margin = __cpu_to_le32(detect_margin);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi pdev set adaptive cca params enable:%d detection level:%d detection margin:%d\n",
     enable, detect_level, detect_margin);
 return skb;
}
