
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int addr; } ;
struct wmi_vdev_up_cmd {TYPE_1__ vdev_bssid; void* vdev_assoc_id; void* vdev_id; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int WMI_TLV_TAG_STRUCT_VDEV_UP_CMD ;
 void* __cpu_to_le16 (int) ;
 void* __cpu_to_le32 (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;
 int ether_addr_copy (int ,int const*) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_tlv_op_gen_vdev_up(struct ath10k *ar, u32 vdev_id, u32 aid,
         const u8 *bssid)

{
 struct wmi_vdev_up_cmd *cmd;
 struct wmi_tlv *tlv;
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*tlv) + sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 tlv = (void *)skb->data;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_VDEV_UP_CMD);
 tlv->len = __cpu_to_le16(sizeof(*cmd));
 cmd = (void *)tlv->value;
 cmd->vdev_id = __cpu_to_le32(vdev_id);
 cmd->vdev_assoc_id = __cpu_to_le32(aid);
 ether_addr_copy(cmd->vdev_bssid.addr, bssid);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi tlv vdev up\n");
 return skb;
}
