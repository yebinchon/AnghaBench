
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rocker_desc_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ in_pport; scalar_t__ in_pport_mask; int ip_proto; int ip_proto_mask; int ip_tos; int ip_tos_mask; scalar_t__ group_id; int eth_type; int vlan_id_mask; int vlan_id; int eth_dst_mask; int eth_dst; int eth_src_mask; int eth_src; } ;
struct TYPE_4__ {TYPE_1__ acl; } ;
struct ofdpa_flow_tbl_entry {TYPE_2__ key; } ;


 int EMSGSIZE ;
 int ETH_ALEN ;


 scalar_t__ ROCKER_GROUP_NONE ;
 int ROCKER_TLV_OF_DPA_DST_MAC ;
 int ROCKER_TLV_OF_DPA_DST_MAC_MASK ;
 int ROCKER_TLV_OF_DPA_ETHERTYPE ;
 int ROCKER_TLV_OF_DPA_GROUP_ID ;
 int ROCKER_TLV_OF_DPA_IN_PPORT ;
 int ROCKER_TLV_OF_DPA_IN_PPORT_MASK ;
 int ROCKER_TLV_OF_DPA_IP_DSCP ;
 int ROCKER_TLV_OF_DPA_IP_DSCP_MASK ;
 int ROCKER_TLV_OF_DPA_IP_ECN ;
 int ROCKER_TLV_OF_DPA_IP_ECN_MASK ;
 int ROCKER_TLV_OF_DPA_IP_PROTO ;
 int ROCKER_TLV_OF_DPA_IP_PROTO_MASK ;
 int ROCKER_TLV_OF_DPA_SRC_MAC ;
 int ROCKER_TLV_OF_DPA_SRC_MAC_MASK ;
 int ROCKER_TLV_OF_DPA_VLAN_ID ;
 int ROCKER_TLV_OF_DPA_VLAN_ID_MASK ;
 int ntohs (int ) ;
 scalar_t__ rocker_tlv_put (struct rocker_desc_info*,int ,int ,int ) ;
 scalar_t__ rocker_tlv_put_be16 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ rocker_tlv_put_u32 (struct rocker_desc_info*,int ,scalar_t__) ;
 int rocker_tlv_put_u8 (struct rocker_desc_info*,int ,int) ;

__attribute__((used)) static int
ofdpa_cmd_flow_tbl_add_acl(struct rocker_desc_info *desc_info,
      const struct ofdpa_flow_tbl_entry *entry)
{
 if (rocker_tlv_put_u32(desc_info, ROCKER_TLV_OF_DPA_IN_PPORT,
          entry->key.acl.in_pport))
  return -EMSGSIZE;
 if (rocker_tlv_put_u32(desc_info, ROCKER_TLV_OF_DPA_IN_PPORT_MASK,
          entry->key.acl.in_pport_mask))
  return -EMSGSIZE;
 if (rocker_tlv_put(desc_info, ROCKER_TLV_OF_DPA_SRC_MAC,
      ETH_ALEN, entry->key.acl.eth_src))
  return -EMSGSIZE;
 if (rocker_tlv_put(desc_info, ROCKER_TLV_OF_DPA_SRC_MAC_MASK,
      ETH_ALEN, entry->key.acl.eth_src_mask))
  return -EMSGSIZE;
 if (rocker_tlv_put(desc_info, ROCKER_TLV_OF_DPA_DST_MAC,
      ETH_ALEN, entry->key.acl.eth_dst))
  return -EMSGSIZE;
 if (rocker_tlv_put(desc_info, ROCKER_TLV_OF_DPA_DST_MAC_MASK,
      ETH_ALEN, entry->key.acl.eth_dst_mask))
  return -EMSGSIZE;
 if (rocker_tlv_put_be16(desc_info, ROCKER_TLV_OF_DPA_ETHERTYPE,
    entry->key.acl.eth_type))
  return -EMSGSIZE;
 if (rocker_tlv_put_be16(desc_info, ROCKER_TLV_OF_DPA_VLAN_ID,
    entry->key.acl.vlan_id))
  return -EMSGSIZE;
 if (rocker_tlv_put_be16(desc_info, ROCKER_TLV_OF_DPA_VLAN_ID_MASK,
    entry->key.acl.vlan_id_mask))
  return -EMSGSIZE;

 switch (ntohs(entry->key.acl.eth_type)) {
 case 129:
 case 128:
  if (rocker_tlv_put_u8(desc_info, ROCKER_TLV_OF_DPA_IP_PROTO,
          entry->key.acl.ip_proto))
   return -EMSGSIZE;
  if (rocker_tlv_put_u8(desc_info,
          ROCKER_TLV_OF_DPA_IP_PROTO_MASK,
          entry->key.acl.ip_proto_mask))
   return -EMSGSIZE;
  if (rocker_tlv_put_u8(desc_info, ROCKER_TLV_OF_DPA_IP_DSCP,
          entry->key.acl.ip_tos & 0x3f))
   return -EMSGSIZE;
  if (rocker_tlv_put_u8(desc_info,
          ROCKER_TLV_OF_DPA_IP_DSCP_MASK,
          entry->key.acl.ip_tos_mask & 0x3f))
   return -EMSGSIZE;
  if (rocker_tlv_put_u8(desc_info, ROCKER_TLV_OF_DPA_IP_ECN,
          (entry->key.acl.ip_tos & 0xc0) >> 6))
   return -EMSGSIZE;
  if (rocker_tlv_put_u8(desc_info,
          ROCKER_TLV_OF_DPA_IP_ECN_MASK,
          (entry->key.acl.ip_tos_mask & 0xc0) >> 6))
   return -EMSGSIZE;
  break;
 }

 if (entry->key.acl.group_id != ROCKER_GROUP_NONE &&
     rocker_tlv_put_u32(desc_info, ROCKER_TLV_OF_DPA_GROUP_ID,
          entry->key.acl.group_id))
  return -EMSGSIZE;

 return 0;
}
