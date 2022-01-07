
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_echo_cmd {int value; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_op_gen_echo(struct ath10k *ar, u32 value)
{
 struct wmi_echo_cmd *cmd;
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_echo_cmd *)skb->data;
 cmd->value = cpu_to_le32(value);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi echo value 0x%08x\n", value);
 return skb;
}
