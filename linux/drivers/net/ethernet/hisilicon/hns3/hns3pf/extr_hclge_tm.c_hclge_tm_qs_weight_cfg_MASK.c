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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct hclge_qs_weight_cmd {int /*<<< orphan*/  dwrr; int /*<<< orphan*/  qs_id; } ;
struct hclge_dev {int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_TM_QS_WEIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct hclge_dev *hdev, u16 qs_id,
				  u8 dwrr)
{
	struct hclge_qs_weight_cmd *weight;
	struct hclge_desc desc;

	FUNC2(&desc, HCLGE_OPC_TM_QS_WEIGHT, false);

	weight = (struct hclge_qs_weight_cmd *)desc.data;

	weight->qs_id = FUNC0(qs_id);
	weight->dwrr = dwrr;

	return FUNC1(&hdev->hw, &desc, 1);
}