#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct hclge_pfc_stats_cmd {int /*<<< orphan*/ * pkt_num; } ;
struct hclge_dev {int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; int /*<<< orphan*/  flag; } ;
typedef  enum hclge_opcode_type { ____Placeholder_hclge_opcode_type } hclge_opcode_type ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HCLGE_CMD_FLAG_NEXT ; 
 size_t HCLGE_MAX_TC_NUM ; 
 int HCLGE_OPC_QUERY_PFC_RX_PKT_CNT ; 
 int HCLGE_OPC_QUERY_PFC_TX_PKT_CNT ; 
 int HCLGE_TM_PFC_NUM_GET_PER_CMD ; 
 int HCLGE_TM_PFC_PKT_GET_CMD_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hclge_dev *hdev,
			       enum hclge_opcode_type opcode, u64 *stats)
{
	struct hclge_desc desc[HCLGE_TM_PFC_PKT_GET_CMD_NUM];
	int ret, i, j;

	if (!(opcode == HCLGE_OPC_QUERY_PFC_RX_PKT_CNT ||
	      opcode == HCLGE_OPC_QUERY_PFC_TX_PKT_CNT))
		return -EINVAL;

	for (i = 0; i < HCLGE_TM_PFC_PKT_GET_CMD_NUM - 1; i++) {
		FUNC2(&desc[i], opcode, true);
		desc[i].flag |= FUNC0(HCLGE_CMD_FLAG_NEXT);
	}

	FUNC2(&desc[i], opcode, true);

	ret = FUNC1(&hdev->hw, desc, HCLGE_TM_PFC_PKT_GET_CMD_NUM);
	if (ret)
		return ret;

	for (i = 0; i < HCLGE_TM_PFC_PKT_GET_CMD_NUM; i++) {
		struct hclge_pfc_stats_cmd *pfc_stats =
				(struct hclge_pfc_stats_cmd *)desc[i].data;

		for (j = 0; j < HCLGE_TM_PFC_NUM_GET_PER_CMD; j++) {
			u32 index = i * HCLGE_TM_PFC_PKT_GET_CMD_NUM + j;

			if (index < HCLGE_MAX_TC_NUM)
				stats[index] =
					FUNC3(pfc_stats->pkt_num[j]);
		}
	}
	return 0;
}