
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rocker_desc_info {int dummy; } ;
struct TYPE_3__ {int goto_tbl; int in_pport_mask; int in_pport; } ;
struct TYPE_4__ {TYPE_1__ ig_port; } ;
struct ofdpa_flow_tbl_entry {TYPE_2__ key; } ;


 int EMSGSIZE ;
 int ROCKER_TLV_OF_DPA_GOTO_TABLE_ID ;
 int ROCKER_TLV_OF_DPA_IN_PPORT ;
 int ROCKER_TLV_OF_DPA_IN_PPORT_MASK ;
 scalar_t__ rocker_tlv_put_u16 (struct rocker_desc_info*,int ,int ) ;
 scalar_t__ rocker_tlv_put_u32 (struct rocker_desc_info*,int ,int ) ;

__attribute__((used)) static int
ofdpa_cmd_flow_tbl_add_ig_port(struct rocker_desc_info *desc_info,
          const struct ofdpa_flow_tbl_entry *entry)
{
 if (rocker_tlv_put_u32(desc_info, ROCKER_TLV_OF_DPA_IN_PPORT,
          entry->key.ig_port.in_pport))
  return -EMSGSIZE;
 if (rocker_tlv_put_u32(desc_info, ROCKER_TLV_OF_DPA_IN_PPORT_MASK,
          entry->key.ig_port.in_pport_mask))
  return -EMSGSIZE;
 if (rocker_tlv_put_u16(desc_info, ROCKER_TLV_OF_DPA_GOTO_TABLE_ID,
          entry->key.ig_port.goto_tbl))
  return -EMSGSIZE;

 return 0;
}
