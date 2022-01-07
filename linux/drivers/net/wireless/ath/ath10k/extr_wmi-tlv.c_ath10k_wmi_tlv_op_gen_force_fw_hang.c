
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct wmi_force_fw_hang_cmd {void* delay_ms; void* type; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;
typedef enum wmi_force_fw_hang_type { ____Placeholder_wmi_force_fw_hang_type } wmi_force_fw_hang_type ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int WMI_TLV_TAG_STRUCT_FORCE_FW_HANG_CMD ;
 void* __cpu_to_le16 (int) ;
 void* __cpu_to_le32 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_tlv_op_gen_force_fw_hang(struct ath10k *ar,
        enum wmi_force_fw_hang_type type,
        u32 delay_ms)
{
 struct wmi_force_fw_hang_cmd *cmd;
 struct wmi_tlv *tlv;
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*tlv) + sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 tlv = (void *)skb->data;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_FORCE_FW_HANG_CMD);
 tlv->len = __cpu_to_le16(sizeof(*cmd));
 cmd = (void *)tlv->value;
 cmd->type = __cpu_to_le32(type);
 cmd->delay_ms = __cpu_to_le32(delay_ms);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi tlv force fw hang\n");
 return skb;
}
