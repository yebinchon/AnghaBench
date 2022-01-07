
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct hclge_dev {int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct hclge_bp_to_qs_map_cmd {int qs_bit_map; void* qs_group_id; void* tc_id; } ;


 int HCLGE_OPC_TM_BP_TO_QSET_MAPPING ;
 int cpu_to_le32 (int ) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int ,int) ;

__attribute__((used)) static int hclge_tm_qs_bp_cfg(struct hclge_dev *hdev, u8 tc, u8 grp_id,
         u32 bit_map)
{
 struct hclge_bp_to_qs_map_cmd *bp_to_qs_map_cmd;
 struct hclge_desc desc;

 hclge_cmd_setup_basic_desc(&desc, HCLGE_OPC_TM_BP_TO_QSET_MAPPING,
       0);

 bp_to_qs_map_cmd = (struct hclge_bp_to_qs_map_cmd *)desc.data;

 bp_to_qs_map_cmd->tc_id = tc;
 bp_to_qs_map_cmd->qs_group_id = grp_id;
 bp_to_qs_map_cmd->qs_bit_map = cpu_to_le32(bit_map);

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
