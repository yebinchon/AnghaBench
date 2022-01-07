
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hclge_pg_shapping_cmd {int pg_shapping_para; int pg_id; } ;
struct hclge_dev {int hw; } ;
struct hclge_desc {scalar_t__ data; } ;
typedef enum hclge_shap_bucket { ____Placeholder_hclge_shap_bucket } hclge_shap_bucket ;
typedef enum hclge_opcode_type { ____Placeholder_hclge_opcode_type } hclge_opcode_type ;


 int HCLGE_OPC_TM_PG_C_SHAPPING ;
 int HCLGE_OPC_TM_PG_P_SHAPPING ;
 int cpu_to_le32 (int ) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int,int) ;

__attribute__((used)) static int hclge_tm_pg_shapping_cfg(struct hclge_dev *hdev,
        enum hclge_shap_bucket bucket, u8 pg_id,
        u32 shapping_para)
{
 struct hclge_pg_shapping_cmd *shap_cfg_cmd;
 enum hclge_opcode_type opcode;
 struct hclge_desc desc;

 opcode = bucket ? HCLGE_OPC_TM_PG_P_SHAPPING :
   HCLGE_OPC_TM_PG_C_SHAPPING;
 hclge_cmd_setup_basic_desc(&desc, opcode, 0);

 shap_cfg_cmd = (struct hclge_pg_shapping_cmd *)desc.data;

 shap_cfg_cmd->pg_id = pg_id;

 shap_cfg_cmd->pg_shapping_para = cpu_to_le32(shapping_para);

 return hclge_cmd_send(&hdev->hw, &desc, 1);
}
