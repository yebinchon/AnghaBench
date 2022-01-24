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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct hclge_dev {int /*<<< orphan*/  hw; } ;
struct hclge_desc {void** data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_TM_QS_SCH_MODE_CFG ; 
 scalar_t__ HCLGE_SCH_MODE_DWRR ; 
 int /*<<< orphan*/  HCLGE_TM_TX_SCHD_DWRR_MSK ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct hclge_dev *hdev, u16 qs_id, u8 mode)
{
	struct hclge_desc desc;

	FUNC2(&desc, HCLGE_OPC_TM_QS_SCH_MODE_CFG, false);

	if (mode == HCLGE_SCH_MODE_DWRR)
		desc.data[1] = FUNC0(HCLGE_TM_TX_SCHD_DWRR_MSK);
	else
		desc.data[1] = 0;

	desc.data[0] = FUNC0(qs_id);

	return FUNC1(&hdev->hw, &desc, 1);
}