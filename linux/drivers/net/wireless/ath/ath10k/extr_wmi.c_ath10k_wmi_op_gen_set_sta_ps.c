
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_sta_powersave_param_cmd {void* param_value; void* param_id; void* vdev_id; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;
typedef enum wmi_sta_powersave_param { ____Placeholder_wmi_sta_powersave_param } wmi_sta_powersave_param ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 void* __cpu_to_le32 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int,int) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_op_gen_set_sta_ps(struct ath10k *ar, u32 vdev_id,
        enum wmi_sta_powersave_param param_id,
        u32 value)
{
 struct wmi_sta_powersave_param_cmd *cmd;
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_sta_powersave_param_cmd *)skb->data;
 cmd->vdev_id = __cpu_to_le32(vdev_id);
 cmd->param_id = __cpu_to_le32(param_id);
 cmd->param_value = __cpu_to_le32(value);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi sta ps param vdev_id 0x%x param %d value %d\n",
     vdev_id, param_id, value);
 return skb;
}
