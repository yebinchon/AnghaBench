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
struct hclge_desc {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_OPC_CFG_MAC_PAUSE_EN ; 
 int HCLGE_RX_MAC_PAUSE_EN_MSK ; 
 int HCLGE_TX_MAC_PAUSE_EN_MSK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct hclge_dev *hdev, bool tx, bool rx)
{
	struct hclge_desc desc;

	FUNC2(&desc, HCLGE_OPC_CFG_MAC_PAUSE_EN, false);

	desc.data[0] = FUNC0((tx ? HCLGE_TX_MAC_PAUSE_EN_MSK : 0) |
		(rx ? HCLGE_RX_MAC_PAUSE_EN_MSK : 0));

	return FUNC1(&hdev->hw, &desc, 1);
}