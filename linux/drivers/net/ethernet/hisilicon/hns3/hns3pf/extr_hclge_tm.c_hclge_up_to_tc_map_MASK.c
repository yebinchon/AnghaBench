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
struct hclge_dev {int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_PRI_TO_TC_MAPPING ; 
 scalar_t__ HNAE3_MAX_USER_PRIO ; 
 int FUNC0 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct hclge_dev*,scalar_t__*,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct hclge_dev *hdev)
{
	struct hclge_desc desc;
	u8 *pri = (u8 *)desc.data;
	u8 pri_id;
	int ret;

	FUNC1(&desc, HCLGE_OPC_PRI_TO_TC_MAPPING, false);

	for (pri_id = 0; pri_id < HNAE3_MAX_USER_PRIO; pri_id++) {
		ret = FUNC2(hdev, pri, pri_id);
		if (ret)
			return ret;
	}

	return FUNC0(&hdev->hw, &desc, 1);
}