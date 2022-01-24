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
struct hclge_dev {TYPE_1__* pdev; } ;
struct hclge_desc {int /*<<< orphan*/ * data; } ;
struct hclge_dbg_bitmap_cmd {int /*<<< orphan*/  bit1; int /*<<< orphan*/  bit0; int /*<<< orphan*/  bit2; int /*<<< orphan*/  bit3; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_PG_DFX_STS ; 
 int /*<<< orphan*/  HCLGE_OPC_PORT_DFX_STS ; 
 int /*<<< orphan*/  HCLGE_OPC_PRI_DFX_STS ; 
 int /*<<< orphan*/  HCLGE_OPC_QSET_DFX_STS ; 
 int /*<<< orphan*/  HCLGE_OPC_SCH_NQ_CNT ; 
 int /*<<< orphan*/  HCLGE_OPC_SCH_RQ_CNT ; 
 int /*<<< orphan*/  HCLGE_OPC_TM_INTERNAL_CNT ; 
 int /*<<< orphan*/  HCLGE_OPC_TM_INTERNAL_STS ; 
 int /*<<< orphan*/  HCLGE_OPC_TM_INTERNAL_STS_1 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hclge_dev*,struct hclge_desc*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,char*,int*,int*,int*,int*,int*,int*) ; 

__attribute__((used)) static void FUNC4(struct hclge_dev *hdev, const char *cmd_buf)
{
	struct device *dev = &hdev->pdev->dev;
	struct hclge_dbg_bitmap_cmd *bitmap;
	int rq_id, pri_id, qset_id;
	int port_id, nq_id, pg_id;
	struct hclge_desc desc[2];

	int cnt, ret;

	cnt = FUNC3(cmd_buf, "%i %i %i %i %i %i",
		     &port_id, &pri_id, &pg_id, &rq_id, &nq_id, &qset_id);
	if (cnt != 6) {
		FUNC0(&hdev->pdev->dev,
			"dump dcb: bad command parameter, cnt=%d\n", cnt);
		return;
	}

	ret = FUNC2(hdev, desc, qset_id, 1,
				 HCLGE_OPC_QSET_DFX_STS);
	if (ret)
		return;

	bitmap = (struct hclge_dbg_bitmap_cmd *)&desc[0].data[1];
	FUNC1(dev, "roce_qset_mask: 0x%x\n", bitmap->bit0);
	FUNC1(dev, "nic_qs_mask: 0x%x\n", bitmap->bit1);
	FUNC1(dev, "qs_shaping_pass: 0x%x\n", bitmap->bit2);
	FUNC1(dev, "qs_bp_sts: 0x%x\n", bitmap->bit3);

	ret = FUNC2(hdev, desc, pri_id, 1, HCLGE_OPC_PRI_DFX_STS);
	if (ret)
		return;

	bitmap = (struct hclge_dbg_bitmap_cmd *)&desc[0].data[1];
	FUNC1(dev, "pri_mask: 0x%x\n", bitmap->bit0);
	FUNC1(dev, "pri_cshaping_pass: 0x%x\n", bitmap->bit1);
	FUNC1(dev, "pri_pshaping_pass: 0x%x\n", bitmap->bit2);

	ret = FUNC2(hdev, desc, pg_id, 1, HCLGE_OPC_PG_DFX_STS);
	if (ret)
		return;

	bitmap = (struct hclge_dbg_bitmap_cmd *)&desc[0].data[1];
	FUNC1(dev, "pg_mask: 0x%x\n", bitmap->bit0);
	FUNC1(dev, "pg_cshaping_pass: 0x%x\n", bitmap->bit1);
	FUNC1(dev, "pg_pshaping_pass: 0x%x\n", bitmap->bit2);

	ret = FUNC2(hdev, desc, port_id, 1,
				 HCLGE_OPC_PORT_DFX_STS);
	if (ret)
		return;

	bitmap = (struct hclge_dbg_bitmap_cmd *)&desc[0].data[1];
	FUNC1(dev, "port_mask: 0x%x\n", bitmap->bit0);
	FUNC1(dev, "port_shaping_pass: 0x%x\n", bitmap->bit1);

	ret = FUNC2(hdev, desc, nq_id, 1, HCLGE_OPC_SCH_NQ_CNT);
	if (ret)
		return;

	FUNC1(dev, "sch_nq_cnt: 0x%x\n", desc[0].data[1]);

	ret = FUNC2(hdev, desc, nq_id, 1, HCLGE_OPC_SCH_RQ_CNT);
	if (ret)
		return;

	FUNC1(dev, "sch_rq_cnt: 0x%x\n", desc[0].data[1]);

	ret = FUNC2(hdev, desc, 0, 2, HCLGE_OPC_TM_INTERNAL_STS);
	if (ret)
		return;

	FUNC1(dev, "pri_bp: 0x%x\n", desc[0].data[1]);
	FUNC1(dev, "fifo_dfx_info: 0x%x\n", desc[0].data[2]);
	FUNC1(dev, "sch_roce_fifo_afull_gap: 0x%x\n", desc[0].data[3]);
	FUNC1(dev, "tx_private_waterline: 0x%x\n", desc[0].data[4]);
	FUNC1(dev, "tm_bypass_en: 0x%x\n", desc[0].data[5]);
	FUNC1(dev, "SSU_TM_BYPASS_EN: 0x%x\n", desc[1].data[0]);
	FUNC1(dev, "SSU_RESERVE_CFG: 0x%x\n", desc[1].data[1]);

	ret = FUNC2(hdev, desc, port_id, 1,
				 HCLGE_OPC_TM_INTERNAL_CNT);
	if (ret)
		return;

	FUNC1(dev, "SCH_NIC_NUM: 0x%x\n", desc[0].data[1]);
	FUNC1(dev, "SCH_ROCE_NUM: 0x%x\n", desc[0].data[2]);

	ret = FUNC2(hdev, desc, port_id, 1,
				 HCLGE_OPC_TM_INTERNAL_STS_1);
	if (ret)
		return;

	FUNC1(dev, "TC_MAP_SEL: 0x%x\n", desc[0].data[1]);
	FUNC1(dev, "IGU_PFC_PRI_EN: 0x%x\n", desc[0].data[2]);
	FUNC1(dev, "MAC_PFC_PRI_EN: 0x%x\n", desc[0].data[3]);
	FUNC1(dev, "IGU_PRI_MAP_TC_CFG: 0x%x\n", desc[0].data[4]);
	FUNC1(dev, "IGU_TX_PRI_MAP_TC_CFG: 0x%x\n", desc[0].data[5]);
}