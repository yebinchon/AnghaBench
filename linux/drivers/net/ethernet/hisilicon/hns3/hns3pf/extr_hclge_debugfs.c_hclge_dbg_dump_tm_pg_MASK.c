#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hclge_port_shapping_cmd {int /*<<< orphan*/  port_shapping_para; } ;
struct hclge_pg_shapping_cmd {int /*<<< orphan*/  pg_shapping_para; int /*<<< orphan*/  pg_id; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {int /*<<< orphan*/ * data; } ;
struct hclge_bp_to_qs_map_cmd {int /*<<< orphan*/  qs_bit_map; int /*<<< orphan*/  qs_group_id; int /*<<< orphan*/  tc_id; } ;
typedef  enum hclge_opcode_type { ____Placeholder_hclge_opcode_type } hclge_opcode_type ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int HCLGE_OPC_TM_BP_TO_QSET_MAPPING ; 
 int HCLGE_OPC_TM_PG_C_SHAPPING ; 
 int HCLGE_OPC_TM_PG_P_SHAPPING ; 
 int HCLGE_OPC_TM_PG_SCH_MODE_CFG ; 
 int HCLGE_OPC_TM_PORT_SHAPPING ; 
 int HCLGE_OPC_TM_PRI_SCH_MODE_CFG ; 
 int HCLGE_OPC_TM_QS_SCH_MODE_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_desc*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_dev*) ; 

__attribute__((used)) static void FUNC5(struct hclge_dev *hdev)
{
	struct hclge_port_shapping_cmd *port_shap_cfg_cmd;
	struct hclge_bp_to_qs_map_cmd *bp_to_qs_map_cmd;
	struct hclge_pg_shapping_cmd *pg_shap_cfg_cmd;
	enum hclge_opcode_type cmd;
	struct hclge_desc desc;
	int ret;

	cmd = HCLGE_OPC_TM_PG_C_SHAPPING;
	FUNC3(&desc, cmd, true);
	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret)
		goto err_tm_pg_cmd_send;

	pg_shap_cfg_cmd = (struct hclge_pg_shapping_cmd *)desc.data;
	FUNC1(&hdev->pdev->dev, "PG_C pg_id: %u\n", pg_shap_cfg_cmd->pg_id);
	FUNC1(&hdev->pdev->dev, "PG_C pg_shapping: 0x%x\n",
		 pg_shap_cfg_cmd->pg_shapping_para);

	cmd = HCLGE_OPC_TM_PG_P_SHAPPING;
	FUNC3(&desc, cmd, true);
	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret)
		goto err_tm_pg_cmd_send;

	pg_shap_cfg_cmd = (struct hclge_pg_shapping_cmd *)desc.data;
	FUNC1(&hdev->pdev->dev, "PG_P pg_id: %u\n", pg_shap_cfg_cmd->pg_id);
	FUNC1(&hdev->pdev->dev, "PG_P pg_shapping: 0x%x\n",
		 pg_shap_cfg_cmd->pg_shapping_para);

	cmd = HCLGE_OPC_TM_PORT_SHAPPING;
	FUNC3(&desc, cmd, true);
	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret)
		goto err_tm_pg_cmd_send;

	port_shap_cfg_cmd = (struct hclge_port_shapping_cmd *)desc.data;
	FUNC1(&hdev->pdev->dev, "PORT port_shapping: 0x%x\n",
		 port_shap_cfg_cmd->port_shapping_para);

	cmd = HCLGE_OPC_TM_PG_SCH_MODE_CFG;
	FUNC3(&desc, cmd, true);
	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret)
		goto err_tm_pg_cmd_send;

	FUNC1(&hdev->pdev->dev, "PG_SCH pg_id: %u\n", desc.data[0]);

	cmd = HCLGE_OPC_TM_PRI_SCH_MODE_CFG;
	FUNC3(&desc, cmd, true);
	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret)
		goto err_tm_pg_cmd_send;

	FUNC1(&hdev->pdev->dev, "PRI_SCH pri_id: %u\n", desc.data[0]);

	cmd = HCLGE_OPC_TM_QS_SCH_MODE_CFG;
	FUNC3(&desc, cmd, true);
	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret)
		goto err_tm_pg_cmd_send;

	FUNC1(&hdev->pdev->dev, "QS_SCH qs_id: %u\n", desc.data[0]);

	if (!FUNC4(hdev)) {
		FUNC1(&hdev->pdev->dev,
			 "Only DCB-supported dev supports tm mapping\n");
		return;
	}

	cmd = HCLGE_OPC_TM_BP_TO_QSET_MAPPING;
	FUNC3(&desc, cmd, true);
	ret = FUNC2(&hdev->hw, &desc, 1);
	if (ret)
		goto err_tm_pg_cmd_send;

	bp_to_qs_map_cmd = (struct hclge_bp_to_qs_map_cmd *)desc.data;
	FUNC1(&hdev->pdev->dev, "BP_TO_QSET tc_id: %u\n",
		 bp_to_qs_map_cmd->tc_id);
	FUNC1(&hdev->pdev->dev, "BP_TO_QSET qs_group_id: 0x%x\n",
		 bp_to_qs_map_cmd->qs_group_id);
	FUNC1(&hdev->pdev->dev, "BP_TO_QSET qs_bit_map: 0x%x\n",
		 bp_to_qs_map_cmd->qs_bit_map);
	return;

err_tm_pg_cmd_send:
	FUNC0(&hdev->pdev->dev, "dump tm_pg fail(0x%x), ret = %d\n",
		cmd, ret);
}