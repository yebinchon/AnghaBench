
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_tlv_wow_nlo_config_cmd {void* flags; void* vdev_id; } ;
struct wmi_tlv {void* len; void* tag; scalar_t__ value; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int WMI_NLO_CONFIG_STOP ;
 int WMI_TLV_TAG_ARRAY_STRUCT ;
 int WMI_TLV_TAG_ARRAY_UINT32 ;
 int WMI_TLV_TAG_STRUCT_NLO_CONFIG_CMD ;
 void* __cpu_to_le16 (int) ;
 void* __cpu_to_le32 (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,size_t) ;

__attribute__((used)) static struct sk_buff *ath10k_wmi_tlv_op_gen_config_pno_stop(struct ath10k *ar,
            u32 vdev_id)
{
 struct wmi_tlv_wow_nlo_config_cmd *cmd;
 struct wmi_tlv *tlv;
 struct sk_buff *skb;
 void *ptr;
 size_t len;

 len = sizeof(*tlv) + sizeof(*cmd) +
       sizeof(*tlv) +



       sizeof(*tlv);

 skb = ath10k_wmi_alloc_skb(ar, len);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 ptr = (void *)skb->data;
 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_NLO_CONFIG_CMD);
 tlv->len = __cpu_to_le16(sizeof(*cmd));
 cmd = (void *)tlv->value;

 cmd->vdev_id = __cpu_to_le32(vdev_id);
 cmd->flags = __cpu_to_le32(WMI_NLO_CONFIG_STOP);

 ptr += sizeof(*tlv);
 ptr += sizeof(*cmd);


 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_ARRAY_STRUCT);
 tlv->len = __cpu_to_le16(0);

 ptr += sizeof(*tlv);


 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_ARRAY_UINT32);
 tlv->len = __cpu_to_le16(0);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi tlv stop pno config vdev_id %d\n", vdev_id);
 return skb;
}
