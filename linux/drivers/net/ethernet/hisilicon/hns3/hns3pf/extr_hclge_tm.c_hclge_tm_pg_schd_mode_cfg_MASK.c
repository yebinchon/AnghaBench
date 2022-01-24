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
typedef  size_t u8 ;
struct TYPE_4__ {TYPE_1__* pg_info; } ;
struct hclge_dev {int /*<<< orphan*/  hw; TYPE_2__ tm_info; } ;
struct hclge_desc {void** data; } ;
struct TYPE_3__ {scalar_t__ pg_sch_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_TM_PG_SCH_MODE_CFG ; 
 scalar_t__ HCLGE_SCH_MODE_DWRR ; 
 size_t HCLGE_TM_TX_SCHD_DWRR_MSK ; 
 void* FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct hclge_dev *hdev, u8 pg_id)
{
	struct hclge_desc desc;

	FUNC2(&desc, HCLGE_OPC_TM_PG_SCH_MODE_CFG, false);

	if (hdev->tm_info.pg_info[pg_id].pg_sch_mode == HCLGE_SCH_MODE_DWRR)
		desc.data[1] = FUNC0(HCLGE_TM_TX_SCHD_DWRR_MSK);
	else
		desc.data[1] = 0;

	desc.data[0] = FUNC0(pg_id);

	return FUNC1(&hdev->hw, &desc, 1);
}