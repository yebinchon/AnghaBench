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
typedef  int /*<<< orphan*/  u32 ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {int /*<<< orphan*/ * data; } ;
struct hclge_config_mac_mode_cmd {int /*<<< orphan*/  txrx_pad_fcs_loop_en; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_MAC_APP_LP_B ; 
 int /*<<< orphan*/  HCLGE_MAC_RX_EN_B ; 
 int /*<<< orphan*/  HCLGE_MAC_TX_EN_B ; 
 int /*<<< orphan*/  HCLGE_OPC_CONFIG_MAC_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hclge_dev *hdev, bool en)
{
	struct hclge_config_mac_mode_cmd *req;
	struct hclge_desc desc;
	u32 loop_en;
	int ret;

	req = (struct hclge_config_mac_mode_cmd *)&desc.data[0];
	/* 1 Read out the MAC mode config at first */
	FUNC4(&desc, HCLGE_OPC_CONFIG_MAC_MODE, true);
	ret = FUNC3(&hdev->hw, &desc, 1);
	if (ret) {
		FUNC1(&hdev->pdev->dev,
			"mac loopback get fail, ret =%d.\n", ret);
		return ret;
	}

	/* 2 Then setup the loopback flag */
	loop_en = FUNC6(req->txrx_pad_fcs_loop_en);
	FUNC5(loop_en, HCLGE_MAC_APP_LP_B, en ? 1 : 0);
	FUNC5(loop_en, HCLGE_MAC_TX_EN_B, en ? 1 : 0);
	FUNC5(loop_en, HCLGE_MAC_RX_EN_B, en ? 1 : 0);

	req->txrx_pad_fcs_loop_en = FUNC0(loop_en);

	/* 3 Config mac work mode with loopback flag
	 * and its original configure parameters
	 */
	FUNC2(&desc, false);
	ret = FUNC3(&hdev->hw, &desc, 1);
	if (ret)
		FUNC1(&hdev->pdev->dev,
			"mac loopback set fail, ret =%d.\n", ret);
	return ret;
}