
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wmi_vdev_set_param_cmd {void* param_value; void* param_id; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct sk_buff* ERR_PTR (int ) ;
 scalar_t__ WMI_VDEV_PARAM_UNSUPPORTED ;
 void* __cpu_to_le32 (scalar_t__) ;
 int ath10k_dbg (struct ath10k*,int ,char*,scalar_t__,...) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_op_gen_vdev_set_param(struct ath10k *ar, u32 vdev_id,
     u32 param_id, u32 param_value)
{
 struct wmi_vdev_set_param_cmd *cmd;
 struct sk_buff *skb;

 if (param_id == WMI_VDEV_PARAM_UNSUPPORTED) {
  ath10k_dbg(ar, ATH10K_DBG_WMI,
      "vdev param %d not supported by firmware\n",
       param_id);
  return ERR_PTR(-EOPNOTSUPP);
 }

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_vdev_set_param_cmd *)skb->data;
 cmd->vdev_id = __cpu_to_le32(vdev_id);
 cmd->param_id = __cpu_to_le32(param_id);
 cmd->param_value = __cpu_to_le32(param_value);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi vdev id 0x%x set param %d value %d\n",
     vdev_id, param_id, param_value);
 return skb;
}
