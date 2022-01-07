
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_pdev_suspend_cmd {int suspend_opt; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int __cpu_to_le32 (int ) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_op_gen_pdev_suspend(struct ath10k *ar, u32 suspend_opt)
{
 struct wmi_pdev_suspend_cmd *cmd;
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_pdev_suspend_cmd *)skb->data;
 cmd->suspend_opt = __cpu_to_le32(suspend_opt);

 return skb;
}
