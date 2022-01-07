
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_pdev_get_tpc_config_cmd {int param; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int __cpu_to_le32 (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_10_2_4_op_gen_pdev_get_tpc_config(struct ath10k *ar, u32 param)
{
 struct wmi_pdev_get_tpc_config_cmd *cmd;
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_pdev_get_tpc_config_cmd *)skb->data;
 cmd->param = __cpu_to_le32(param);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi pdev get tpc config param %d\n", param);
 return skb;
}
