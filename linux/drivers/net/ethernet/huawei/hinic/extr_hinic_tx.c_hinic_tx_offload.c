
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct hinic_sq_task {int dummy; } ;
typedef enum hinic_offload_type { ____Placeholder_hinic_offload_type } hinic_offload_type ;


 int EPROTONOSUPPORT ;
 scalar_t__ HINIC_MSS_MIN ;
 int HINIC_SQ_CTRL_CLEAR (int ,int ) ;
 scalar_t__ HINIC_SQ_CTRL_GET (int ,int ) ;
 int HINIC_SQ_CTRL_SET (scalar_t__,int ) ;
 scalar_t__ MAX_PAYLOAD_OFFSET ;
 int QUEUE_INFO_MSS ;
 int QUEUE_INFO_PLDOFF ;
 int TX_OFFLOAD_CSUM ;
 int TX_OFFLOAD_TSO ;
 int TX_OFFLOAD_VLAN ;
 int VLAN_PRIO_SHIFT ;
 int hinic_task_set_l2hdr (struct hinic_sq_task*,int ) ;
 int offload_csum (struct hinic_sq_task*,int *,struct sk_buff*) ;
 int offload_tso (struct hinic_sq_task*,int *,struct sk_buff*) ;
 int offload_vlan (struct hinic_sq_task*,int *,int,int) ;
 int skb_network_offset (struct sk_buff*) ;
 int skb_vlan_tag_get (struct sk_buff*) ;
 int skb_vlan_tag_present (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int hinic_tx_offload(struct sk_buff *skb, struct hinic_sq_task *task,
       u32 *queue_info)
{
 enum hinic_offload_type offload = 0;
 u16 vlan_tag;
 int enabled;

 enabled = offload_tso(task, queue_info, skb);
 if (enabled > 0) {
  offload |= TX_OFFLOAD_TSO;
 } else if (enabled == 0) {
  enabled = offload_csum(task, queue_info, skb);
  if (enabled)
   offload |= TX_OFFLOAD_CSUM;
 } else {
  return -EPROTONOSUPPORT;
 }

 if (unlikely(skb_vlan_tag_present(skb))) {
  vlan_tag = skb_vlan_tag_get(skb);
  offload_vlan(task, queue_info, vlan_tag,
        vlan_tag >> VLAN_PRIO_SHIFT);
  offload |= TX_OFFLOAD_VLAN;
 }

 if (offload)
  hinic_task_set_l2hdr(task, skb_network_offset(skb));


 if (HINIC_SQ_CTRL_GET(*queue_info, QUEUE_INFO_PLDOFF) >
     MAX_PAYLOAD_OFFSET) {
  return -EPROTONOSUPPORT;
 }


 if (HINIC_SQ_CTRL_GET(*queue_info, QUEUE_INFO_MSS) < HINIC_MSS_MIN) {
  *queue_info = HINIC_SQ_CTRL_CLEAR(*queue_info, QUEUE_INFO_MSS);
  *queue_info |= HINIC_SQ_CTRL_SET(HINIC_MSS_MIN, QUEUE_INFO_MSS);
 }

 return 0;
}
