
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_desc_info {int dummy; } ;
struct TYPE_2__ {int pop_vlan; } ;
struct ofdpa_group_tbl_entry {TYPE_1__ l2_interface; int group_id; } ;


 int EMSGSIZE ;
 int ROCKER_GROUP_PORT_GET (int ) ;
 int ROCKER_TLV_OF_DPA_OUT_PPORT ;
 int ROCKER_TLV_OF_DPA_POP_VLAN ;
 scalar_t__ rocker_tlv_put_u32 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ rocker_tlv_put_u8 (struct rocker_desc_info*,int ,int ) ;

__attribute__((used)) static int
ofdpa_cmd_group_tbl_add_l2_interface(struct rocker_desc_info *desc_info,
         struct ofdpa_group_tbl_entry *entry)
{
 if (rocker_tlv_put_u32(desc_info, ROCKER_TLV_OF_DPA_OUT_PPORT,
          ROCKER_GROUP_PORT_GET(entry->group_id)))
  return -EMSGSIZE;
 if (rocker_tlv_put_u8(desc_info, ROCKER_TLV_OF_DPA_POP_VLAN,
         entry->l2_interface.pop_vlan))
  return -EMSGSIZE;

 return 0;
}
