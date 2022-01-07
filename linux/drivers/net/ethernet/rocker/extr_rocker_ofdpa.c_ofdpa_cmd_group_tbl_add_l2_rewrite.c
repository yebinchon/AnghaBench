
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_desc_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ vlan_id; int eth_dst; int eth_src; int group_id; } ;
struct ofdpa_group_tbl_entry {TYPE_1__ l2_rewrite; } ;


 int EMSGSIZE ;
 int ETH_ALEN ;
 int ROCKER_TLV_OF_DPA_DST_MAC ;
 int ROCKER_TLV_OF_DPA_GROUP_ID_LOWER ;
 int ROCKER_TLV_OF_DPA_SRC_MAC ;
 int ROCKER_TLV_OF_DPA_VLAN_ID ;
 int is_zero_ether_addr (int ) ;
 scalar_t__ rocker_tlv_put (struct rocker_desc_info*,int ,int ,int ) ;
 scalar_t__ rocker_tlv_put_be16 (struct rocker_desc_info*,int ,scalar_t__) ;
 scalar_t__ rocker_tlv_put_u32 (struct rocker_desc_info*,int ,int ) ;

__attribute__((used)) static int
ofdpa_cmd_group_tbl_add_l2_rewrite(struct rocker_desc_info *desc_info,
       const struct ofdpa_group_tbl_entry *entry)
{
 if (rocker_tlv_put_u32(desc_info, ROCKER_TLV_OF_DPA_GROUP_ID_LOWER,
          entry->l2_rewrite.group_id))
  return -EMSGSIZE;
 if (!is_zero_ether_addr(entry->l2_rewrite.eth_src) &&
     rocker_tlv_put(desc_info, ROCKER_TLV_OF_DPA_SRC_MAC,
      ETH_ALEN, entry->l2_rewrite.eth_src))
  return -EMSGSIZE;
 if (!is_zero_ether_addr(entry->l2_rewrite.eth_dst) &&
     rocker_tlv_put(desc_info, ROCKER_TLV_OF_DPA_DST_MAC,
      ETH_ALEN, entry->l2_rewrite.eth_dst))
  return -EMSGSIZE;
 if (entry->l2_rewrite.vlan_id &&
     rocker_tlv_put_be16(desc_info, ROCKER_TLV_OF_DPA_VLAN_ID,
    entry->l2_rewrite.vlan_id))
  return -EMSGSIZE;

 return 0;
}
