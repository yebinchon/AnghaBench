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
struct hnae3_ae_dev {struct hclgevf_dev* priv; } ;
struct hclgevf_dev {TYPE_1__* pdev; int /*<<< orphan*/  flr_state; int /*<<< orphan*/  default_reset_request; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_FLR_WAIT_CNT ; 
 int /*<<< orphan*/  HCLGEVF_FLR_WAIT_MS ; 
 int /*<<< orphan*/  HNAE3_FLR_DONE ; 
 int /*<<< orphan*/  HNAE3_FLR_DOWN ; 
 int /*<<< orphan*/  HNAE3_FLR_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hnae3_ae_dev *ae_dev)
{
#define HCLGEVF_FLR_WAIT_MS	100
#define HCLGEVF_FLR_WAIT_CNT	50
	struct hclgevf_dev *hdev = ae_dev->priv;
	int cnt = 0;

	FUNC0(HNAE3_FLR_DOWN, &hdev->flr_state);
	FUNC0(HNAE3_FLR_DONE, &hdev->flr_state);
	FUNC4(HNAE3_FLR_RESET, &hdev->default_reset_request);
	FUNC2(hdev->pdev, NULL);

	while (!FUNC5(HNAE3_FLR_DOWN, &hdev->flr_state) &&
	       cnt++ < HCLGEVF_FLR_WAIT_CNT)
		FUNC3(HCLGEVF_FLR_WAIT_MS);

	if (!FUNC5(HNAE3_FLR_DOWN, &hdev->flr_state))
		FUNC1(&hdev->pdev->dev,
			"flr wait down timeout: %d\n", cnt);
}