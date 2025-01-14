
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wmi_pdev_set_param_cmd {void* param_value; void* param_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct sk_buff* ERR_PTR (int ) ;
 scalar_t__ WMI_PDEV_PARAM_UNSUPPORTED ;
 void* __cpu_to_le32 (scalar_t__) ;
 int ath10k_dbg (struct ath10k*,int ,char*,scalar_t__,scalar_t__) ;
 int ath10k_warn (struct ath10k*,char*,scalar_t__) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_op_gen_pdev_set_param(struct ath10k *ar, u32 id, u32 value)
{
 struct wmi_pdev_set_param_cmd *cmd;
 struct sk_buff *skb;

 if (id == WMI_PDEV_PARAM_UNSUPPORTED) {
  ath10k_warn(ar, "pdev param %d not supported by firmware\n",
       id);
  return ERR_PTR(-EOPNOTSUPP);
 }

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_pdev_set_param_cmd *)skb->data;
 cmd->param_id = __cpu_to_le32(id);
 cmd->param_value = __cpu_to_le32(value);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi pdev set param %d value %d\n",
     id, value);
 return skb;
}
