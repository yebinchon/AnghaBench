
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rocker_desc_info {int dummy; } ;
struct TYPE_3__ {int group_id; int goto_tbl; int dst4_mask; int dst4; int eth_type; } ;
struct TYPE_4__ {TYPE_1__ ucast_routing; } ;
struct ofdpa_flow_tbl_entry {TYPE_2__ key; } ;


 int EMSGSIZE ;
 int ROCKER_TLV_OF_DPA_DST_IP ;
 int ROCKER_TLV_OF_DPA_DST_IP_MASK ;
 int ROCKER_TLV_OF_DPA_ETHERTYPE ;
 int ROCKER_TLV_OF_DPA_GOTO_TABLE_ID ;
 int ROCKER_TLV_OF_DPA_GROUP_ID ;
 scalar_t__ rocker_tlv_put_be16 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ rocker_tlv_put_be32 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ rocker_tlv_put_u16 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ rocker_tlv_put_u32 (struct rocker_desc_info*,int ,int ) ;

__attribute__((used)) static int
ofdpa_cmd_flow_tbl_add_ucast_routing(struct rocker_desc_info *desc_info,
         const struct ofdpa_flow_tbl_entry *entry)
{
 if (rocker_tlv_put_be16(desc_info, ROCKER_TLV_OF_DPA_ETHERTYPE,
    entry->key.ucast_routing.eth_type))
  return -EMSGSIZE;
 if (rocker_tlv_put_be32(desc_info, ROCKER_TLV_OF_DPA_DST_IP,
    entry->key.ucast_routing.dst4))
  return -EMSGSIZE;
 if (rocker_tlv_put_be32(desc_info, ROCKER_TLV_OF_DPA_DST_IP_MASK,
    entry->key.ucast_routing.dst4_mask))
  return -EMSGSIZE;
 if (rocker_tlv_put_u16(desc_info, ROCKER_TLV_OF_DPA_GOTO_TABLE_ID,
          entry->key.ucast_routing.goto_tbl))
  return -EMSGSIZE;
 if (rocker_tlv_put_u32(desc_info, ROCKER_TLV_OF_DPA_GROUP_ID,
          entry->key.ucast_routing.group_id))
  return -EMSGSIZE;

 return 0;
}
