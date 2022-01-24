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
typedef  void* u8 ;
struct hclge_priority_weight_cmd {void* dwrr; void* pri_id; } ;
struct hclge_dev {int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_TM_PRI_WEIGHT ; 
 int FUNC0 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct hclge_dev *hdev, u8 pri_id,
				   u8 dwrr)
{
	struct hclge_priority_weight_cmd *weight;
	struct hclge_desc desc;

	FUNC1(&desc, HCLGE_OPC_TM_PRI_WEIGHT, false);

	weight = (struct hclge_priority_weight_cmd *)desc.data;

	weight->pri_id = pri_id;
	weight->dwrr = dwrr;

	return FUNC0(&hdev->hw, &desc, 1);
}