
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hclge_port_shapping_cmd {int port_shapping_para; } ;
struct hclge_pg_shapping_cmd {int pg_shapping_para; int pg_id; } ;
struct hclge_dev {TYPE_1__* pdev; int hw; } ;
struct hclge_desc {int * data; } ;
struct hclge_bp_to_qs_map_cmd {int qs_bit_map; int qs_group_id; int tc_id; } ;
typedef enum hclge_opcode_type { ____Placeholder_hclge_opcode_type } hclge_opcode_type ;
struct TYPE_2__ {int dev; } ;


 int HCLGE_OPC_TM_BP_TO_QSET_MAPPING ;
 int HCLGE_OPC_TM_PG_C_SHAPPING ;
 int HCLGE_OPC_TM_PG_P_SHAPPING ;
 int HCLGE_OPC_TM_PG_SCH_MODE_CFG ;
 int HCLGE_OPC_TM_PORT_SHAPPING ;
 int HCLGE_OPC_TM_PRI_SCH_MODE_CFG ;
 int HCLGE_OPC_TM_QS_SCH_MODE_CFG ;
 int dev_err (int *,char*,int,int) ;
 int dev_info (int *,char*,...) ;
 int hclge_cmd_send (int *,struct hclge_desc*,int) ;
 int hclge_cmd_setup_basic_desc (struct hclge_desc*,int,int) ;
 int hnae3_dev_dcb_supported (struct hclge_dev*) ;

__attribute__((used)) static void hclge_dbg_dump_tm_pg(struct hclge_dev *hdev)
{
 struct hclge_port_shapping_cmd *port_shap_cfg_cmd;
 struct hclge_bp_to_qs_map_cmd *bp_to_qs_map_cmd;
 struct hclge_pg_shapping_cmd *pg_shap_cfg_cmd;
 enum hclge_opcode_type cmd;
 struct hclge_desc desc;
 int ret;

 cmd = HCLGE_OPC_TM_PG_C_SHAPPING;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_pg_cmd_send;

 pg_shap_cfg_cmd = (struct hclge_pg_shapping_cmd *)desc.data;
 dev_info(&hdev->pdev->dev, "PG_C pg_id: %u\n", pg_shap_cfg_cmd->pg_id);
 dev_info(&hdev->pdev->dev, "PG_C pg_shapping: 0x%x\n",
   pg_shap_cfg_cmd->pg_shapping_para);

 cmd = HCLGE_OPC_TM_PG_P_SHAPPING;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_pg_cmd_send;

 pg_shap_cfg_cmd = (struct hclge_pg_shapping_cmd *)desc.data;
 dev_info(&hdev->pdev->dev, "PG_P pg_id: %u\n", pg_shap_cfg_cmd->pg_id);
 dev_info(&hdev->pdev->dev, "PG_P pg_shapping: 0x%x\n",
   pg_shap_cfg_cmd->pg_shapping_para);

 cmd = HCLGE_OPC_TM_PORT_SHAPPING;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_pg_cmd_send;

 port_shap_cfg_cmd = (struct hclge_port_shapping_cmd *)desc.data;
 dev_info(&hdev->pdev->dev, "PORT port_shapping: 0x%x\n",
   port_shap_cfg_cmd->port_shapping_para);

 cmd = HCLGE_OPC_TM_PG_SCH_MODE_CFG;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_pg_cmd_send;

 dev_info(&hdev->pdev->dev, "PG_SCH pg_id: %u\n", desc.data[0]);

 cmd = HCLGE_OPC_TM_PRI_SCH_MODE_CFG;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_pg_cmd_send;

 dev_info(&hdev->pdev->dev, "PRI_SCH pri_id: %u\n", desc.data[0]);

 cmd = HCLGE_OPC_TM_QS_SCH_MODE_CFG;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_pg_cmd_send;

 dev_info(&hdev->pdev->dev, "QS_SCH qs_id: %u\n", desc.data[0]);

 if (!hnae3_dev_dcb_supported(hdev)) {
  dev_info(&hdev->pdev->dev,
    "Only DCB-supported dev supports tm mapping\n");
  return;
 }

 cmd = HCLGE_OPC_TM_BP_TO_QSET_MAPPING;
 hclge_cmd_setup_basic_desc(&desc, cmd, 1);
 ret = hclge_cmd_send(&hdev->hw, &desc, 1);
 if (ret)
  goto err_tm_pg_cmd_send;

 bp_to_qs_map_cmd = (struct hclge_bp_to_qs_map_cmd *)desc.data;
 dev_info(&hdev->pdev->dev, "BP_TO_QSET tc_id: %u\n",
   bp_to_qs_map_cmd->tc_id);
 dev_info(&hdev->pdev->dev, "BP_TO_QSET qs_group_id: 0x%x\n",
   bp_to_qs_map_cmd->qs_group_id);
 dev_info(&hdev->pdev->dev, "BP_TO_QSET qs_bit_map: 0x%x\n",
   bp_to_qs_map_cmd->qs_bit_map);
 return;

err_tm_pg_cmd_send:
 dev_err(&hdev->pdev->dev, "dump tm_pg fail(0x%x), ret = %d\n",
  cmd, ret);
}
