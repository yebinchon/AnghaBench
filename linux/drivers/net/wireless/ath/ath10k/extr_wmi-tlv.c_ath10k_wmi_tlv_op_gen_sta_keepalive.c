
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_tlv_sta_keepalive_cmd {void* interval; void* method; void* enabled; void* vdev_id; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct TYPE_2__ {int addr; } ;
struct wmi_sta_keepalive_arp_resp {TYPE_1__ dest_mac_addr; int dest_ip4_addr; int src_ip4_addr; } ;
struct wmi_sta_keepalive_arg {int interval; int method; int enabled; int vdev_id; int dest_mac_addr; int dest_ip4_addr; int src_ip4_addr; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int WMI_TLV_TAG_STRUCT_STA_KEEPALIVE_CMD ;
 int WMI_TLV_TAG_STRUCT_STA_KEEPALVE_ARP_RESPONSE ;
 void* __cpu_to_le16 (int) ;
 void* __cpu_to_le32 (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ,int ) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,size_t) ;
 int ether_addr_copy (int ,int ) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_tlv_op_gen_sta_keepalive(struct ath10k *ar,
        const struct wmi_sta_keepalive_arg *arg)
{
 struct wmi_tlv_sta_keepalive_cmd *cmd;
 struct wmi_sta_keepalive_arp_resp *arp;
 struct sk_buff *skb;
 struct wmi_tlv *tlv;
 void *ptr;
 size_t len;

 len = sizeof(*tlv) + sizeof(*cmd) +
       sizeof(*tlv) + sizeof(*arp);
 skb = ath10k_wmi_alloc_skb(ar, len);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 ptr = (void *)skb->data;
 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_STA_KEEPALIVE_CMD);
 tlv->len = __cpu_to_le16(sizeof(*cmd));
 cmd = (void *)tlv->value;
 cmd->vdev_id = __cpu_to_le32(arg->vdev_id);
 cmd->enabled = __cpu_to_le32(arg->enabled);
 cmd->method = __cpu_to_le32(arg->method);
 cmd->interval = __cpu_to_le32(arg->interval);

 ptr += sizeof(*tlv);
 ptr += sizeof(*cmd);

 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_STA_KEEPALVE_ARP_RESPONSE);
 tlv->len = __cpu_to_le16(sizeof(*arp));
 arp = (void *)tlv->value;

 arp->src_ip4_addr = arg->src_ip4_addr;
 arp->dest_ip4_addr = arg->dest_ip4_addr;
 ether_addr_copy(arp->dest_mac_addr.addr, arg->dest_mac_addr);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi tlv sta keepalive vdev %d enabled %d method %d interval %d\n",
     arg->vdev_id, arg->enabled, arg->method, arg->interval);
 return skb;
}
