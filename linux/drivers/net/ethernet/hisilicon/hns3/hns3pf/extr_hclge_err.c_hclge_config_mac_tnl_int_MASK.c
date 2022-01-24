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
struct hclge_desc {void** data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_MAC_TNL_INT_EN ; 
 int /*<<< orphan*/  HCLGE_MAC_TNL_INT_EN_MASK ; 
 int /*<<< orphan*/  HCLGE_OPC_MAC_TNL_INT_EN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct hclge_dev *hdev, bool en)
{
	struct hclge_desc desc;

	FUNC2(&desc, HCLGE_OPC_MAC_TNL_INT_EN, false);
	if (en)
		desc.data[0] = FUNC0(HCLGE_MAC_TNL_INT_EN);
	else
		desc.data[0] = 0;

	desc.data[1] = FUNC0(HCLGE_MAC_TNL_INT_EN_MASK);

	return FUNC1(&hdev->hw, &desc, 1);
}