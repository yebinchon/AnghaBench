
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_tlv_wow_enable_cmd {void* pause_iface_config; void* enable; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int link_can_suspend; } ;
struct ath10k {TYPE_1__ bus_param; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int WMI_TLV_TAG_STRUCT_WOW_ENABLE_CMD ;
 int WOW_IFACE_PAUSE_DISABLED ;
 void* __cpu_to_le16 (int) ;
 void* __cpu_to_le32 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,size_t) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_tlv_op_gen_wow_enable(struct ath10k *ar)
{
 struct wmi_tlv_wow_enable_cmd *cmd;
 struct wmi_tlv *tlv;
 struct sk_buff *skb;
 size_t len;

 len = sizeof(*tlv) + sizeof(*cmd);
 skb = ath10k_wmi_alloc_skb(ar, len);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 tlv = (struct wmi_tlv *)skb->data;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_WOW_ENABLE_CMD);
 tlv->len = __cpu_to_le16(sizeof(*cmd));
 cmd = (void *)tlv->value;

 cmd->enable = __cpu_to_le32(1);
 if (!ar->bus_param.link_can_suspend)
  cmd->pause_iface_config = __cpu_to_le32(WOW_IFACE_PAUSE_DISABLED);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi tlv wow enable\n");
 return skb;
}
