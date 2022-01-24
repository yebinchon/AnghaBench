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
typedef  int /*<<< orphan*/  u8 ;
struct hclge_set_led_state_cmd {int /*<<< orphan*/  locate_led_config; } ;
struct hclge_dev {TYPE_1__* pdev; int /*<<< orphan*/  hw; } ;
struct hclge_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_LED_LOCATE_STATE_M ; 
 int /*<<< orphan*/  HCLGE_LED_LOCATE_STATE_S ; 
 int /*<<< orphan*/  HCLGE_OPC_LED_STATUS_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct hclge_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hclge_dev *hdev, u8 locate_led_status)
{
	struct hclge_set_led_state_cmd *req;
	struct hclge_desc desc;
	int ret;

	FUNC2(&desc, HCLGE_OPC_LED_STATUS_CFG, false);

	req = (struct hclge_set_led_state_cmd *)desc.data;
	FUNC3(req->locate_led_config, HCLGE_LED_LOCATE_STATE_M,
			HCLGE_LED_LOCATE_STATE_S, locate_led_status);

	ret = FUNC1(&hdev->hw, &desc, 1);
	if (ret)
		FUNC0(&hdev->pdev->dev,
			"Send set led state cmd error, ret =%d\n", ret);

	return ret;
}