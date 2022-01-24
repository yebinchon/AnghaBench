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
struct hclge_dev {int /*<<< orphan*/  hw; } ;
struct hclge_desc {int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_CMD_FLAG_NEXT ; 
 int /*<<< orphan*/  HCLGE_OPC_DFX_BD_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct hclge_dev *hdev, struct hclge_desc *desc)
{
	/*prepare 4 commands to query DFX BD number*/
	FUNC2(&desc[0], HCLGE_OPC_DFX_BD_NUM, true);
	desc[0].flag |= FUNC0(HCLGE_CMD_FLAG_NEXT);
	FUNC2(&desc[1], HCLGE_OPC_DFX_BD_NUM, true);
	desc[1].flag |= FUNC0(HCLGE_CMD_FLAG_NEXT);
	FUNC2(&desc[2], HCLGE_OPC_DFX_BD_NUM, true);
	desc[2].flag |= FUNC0(HCLGE_CMD_FLAG_NEXT);
	FUNC2(&desc[3], HCLGE_OPC_DFX_BD_NUM, true);

	return FUNC1(&hdev->hw, desc, 4);
}