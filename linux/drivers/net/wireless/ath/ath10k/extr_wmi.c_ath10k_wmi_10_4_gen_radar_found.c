
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_radar_found_info {void* sidx_max; void* sidx_min; void* width_max; void* width_min; void* pri_max; void* pri_min; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k_radar_found_info {int sidx_max; int sidx_min; int width_max; int width_min; int pri_max; int pri_min; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 void* __cpu_to_le32 (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ,int ,int ,int ) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_10_4_gen_radar_found(struct ath10k *ar,
    const struct ath10k_radar_found_info *arg)
{
 struct wmi_radar_found_info *cmd;
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 cmd = (struct wmi_radar_found_info *)skb->data;
 cmd->pri_min = __cpu_to_le32(arg->pri_min);
 cmd->pri_max = __cpu_to_le32(arg->pri_max);
 cmd->width_min = __cpu_to_le32(arg->width_min);
 cmd->width_max = __cpu_to_le32(arg->width_max);
 cmd->sidx_min = __cpu_to_le32(arg->sidx_min);
 cmd->sidx_max = __cpu_to_le32(arg->sidx_max);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi radar found pri_min %d pri_max %d width_min %d width_max %d sidx_min %d sidx_max %d\n",
     arg->pri_min, arg->pri_max, arg->width_min,
     arg->width_max, arg->sidx_min, arg->sidx_max);
 return skb;
}
