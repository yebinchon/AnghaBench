
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_tlv_set_quiet_cmd {void* enabled; void* next_start; void* duration; void* period; void* vdev_id; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int WMI_TLV_TAG_STRUCT_PDEV_SET_QUIET_CMD ;
 void* __cpu_to_le16 (int) ;
 void* __cpu_to_le32 (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_tlv_op_gen_pdev_set_quiet_mode(struct ath10k *ar, u32 period,
       u32 duration, u32 next_offset,
       u32 enabled)
{
 struct wmi_tlv_set_quiet_cmd *cmd;
 struct wmi_tlv *tlv;
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*tlv) + sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 tlv = (void *)skb->data;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_PDEV_SET_QUIET_CMD);
 tlv->len = __cpu_to_le16(sizeof(*cmd));
 cmd = (void *)tlv->value;


 cmd->vdev_id = __cpu_to_le32(0);
 cmd->period = __cpu_to_le32(period);
 cmd->duration = __cpu_to_le32(duration);
 cmd->next_start = __cpu_to_le32(next_offset);
 cmd->enabled = __cpu_to_le32(enabled);

 ath10k_dbg(ar, ATH10K_DBG_WMI,
     "wmi tlv quiet param: period %u duration %u enabled %d\n",
     period, duration, enabled);
 return skb;
}
