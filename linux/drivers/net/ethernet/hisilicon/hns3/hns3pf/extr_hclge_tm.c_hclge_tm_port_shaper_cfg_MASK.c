#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct hclge_port_shapping_cmd {int /*<<< orphan*/  port_shapping_para; } ;
struct TYPE_3__ {int /*<<< orphan*/  speed; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct hclge_dev {TYPE_2__ hw; } ;
struct hclge_desc {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_TM_PORT_SHAPPING ; 
 int /*<<< orphan*/  HCLGE_SHAPER_BS_S_DEF ; 
 int /*<<< orphan*/  HCLGE_SHAPER_BS_U_DEF ; 
 int /*<<< orphan*/  HCLGE_SHAPER_LVL_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hclge_dev *hdev)
{
	struct hclge_port_shapping_cmd *shap_cfg_cmd;
	struct hclge_desc desc;
	u8 ir_u, ir_b, ir_s;
	u32 shapping_para;
	int ret;

	ret = FUNC3(hdev->hw.mac.speed,
				     HCLGE_SHAPER_LVL_PORT,
				     &ir_b, &ir_u, &ir_s);
	if (ret)
		return ret;

	FUNC2(&desc, HCLGE_OPC_TM_PORT_SHAPPING, false);
	shap_cfg_cmd = (struct hclge_port_shapping_cmd *)desc.data;

	shapping_para = FUNC4(ir_b, ir_u, ir_s,
						   HCLGE_SHAPER_BS_U_DEF,
						   HCLGE_SHAPER_BS_S_DEF);

	shap_cfg_cmd->port_shapping_para = FUNC0(shapping_para);

	return FUNC1(&hdev->hw, &desc, 1);
}