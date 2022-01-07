
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rocker_desc_info {int dummy; } ;
struct TYPE_3__ {scalar_t__ copy_to_cpu; int goto_tbl; int vlan_id_mask; int vlan_id; int eth_dst_mask; int eth_dst; int eth_type; int in_pport_mask; int in_pport; } ;
struct TYPE_4__ {TYPE_1__ term_mac; } ;
struct ofdpa_flow_tbl_entry {TYPE_2__ key; } ;


 int EMSGSIZE ;
 int ETH_ALEN ;
 int ROCKER_TLV_OF_DPA_COPY_CPU_ACTION ;
 int ROCKER_TLV_OF_DPA_DST_MAC ;
 int ROCKER_TLV_OF_DPA_DST_MAC_MASK ;
 int ROCKER_TLV_OF_DPA_ETHERTYPE ;
 int ROCKER_TLV_OF_DPA_GOTO_TABLE_ID ;
 int ROCKER_TLV_OF_DPA_IN_PPORT ;
 int ROCKER_TLV_OF_DPA_IN_PPORT_MASK ;
 int ROCKER_TLV_OF_DPA_VLAN_ID ;
 int ROCKER_TLV_OF_DPA_VLAN_ID_MASK ;
 scalar_t__ rocker_tlv_put (struct rocker_desc_info*,int ,int ,int ) ;
 scalar_t__ rocker_tlv_put_be16 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ rocker_tlv_put_u16 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ rocker_tlv_put_u32 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ rocker_tlv_put_u8 (struct rocker_desc_info*,int ,scalar_t__) ;

__attribute__((used)) static int
ofdpa_cmd_flow_tbl_add_term_mac(struct rocker_desc_info *desc_info,
    const struct ofdpa_flow_tbl_entry *entry)
{
 if (rocker_tlv_put_u32(desc_info, ROCKER_TLV_OF_DPA_IN_PPORT,
          entry->key.term_mac.in_pport))
  return -EMSGSIZE;
 if (rocker_tlv_put_u32(desc_info, ROCKER_TLV_OF_DPA_IN_PPORT_MASK,
          entry->key.term_mac.in_pport_mask))
  return -EMSGSIZE;
 if (rocker_tlv_put_be16(desc_info, ROCKER_TLV_OF_DPA_ETHERTYPE,
    entry->key.term_mac.eth_type))
  return -EMSGSIZE;
 if (rocker_tlv_put(desc_info, ROCKER_TLV_OF_DPA_DST_MAC,
      ETH_ALEN, entry->key.term_mac.eth_dst))
  return -EMSGSIZE;
 if (rocker_tlv_put(desc_info, ROCKER_TLV_OF_DPA_DST_MAC_MASK,
      ETH_ALEN, entry->key.term_mac.eth_dst_mask))
  return -EMSGSIZE;
 if (rocker_tlv_put_be16(desc_info, ROCKER_TLV_OF_DPA_VLAN_ID,
    entry->key.term_mac.vlan_id))
  return -EMSGSIZE;
 if (rocker_tlv_put_be16(desc_info, ROCKER_TLV_OF_DPA_VLAN_ID_MASK,
    entry->key.term_mac.vlan_id_mask))
  return -EMSGSIZE;
 if (rocker_tlv_put_u16(desc_info, ROCKER_TLV_OF_DPA_GOTO_TABLE_ID,
          entry->key.term_mac.goto_tbl))
  return -EMSGSIZE;
 if (entry->key.term_mac.copy_to_cpu &&
     rocker_tlv_put_u8(desc_info, ROCKER_TLV_OF_DPA_COPY_CPU_ACTION,
         entry->key.term_mac.copy_to_cpu))
  return -EMSGSIZE;

 return 0;
}
