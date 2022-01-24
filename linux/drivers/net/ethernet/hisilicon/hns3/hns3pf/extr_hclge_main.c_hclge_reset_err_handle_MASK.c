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
struct TYPE_3__ {scalar_t__ reset_fail_cnt; } ;
struct hclge_dev {scalar_t__ reset_pending; TYPE_2__* pdev; TYPE_1__ rst_stats; int /*<<< orphan*/  reset_type; int /*<<< orphan*/  hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_MISC_VECTOR_INT_STS ; 
 int HCLGE_RESET_INT_M ; 
 scalar_t__ MAX_RESET_FAIL_CNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static bool FUNC6(struct hclge_dev *hdev)
{
#define MAX_RESET_FAIL_CNT 5

	if (hdev->reset_pending) {
		FUNC1(&hdev->pdev->dev, "Reset pending %lu\n",
			 hdev->reset_pending);
		return true;
	} else if (FUNC3(&hdev->hw, HCLGE_MISC_VECTOR_INT_STS) &
		   HCLGE_RESET_INT_M) {
		FUNC1(&hdev->pdev->dev,
			 "reset failed because new reset interrupt\n");
		FUNC2(hdev);
		return false;
	} else if (hdev->rst_stats.reset_fail_cnt < MAX_RESET_FAIL_CNT) {
		hdev->rst_stats.reset_fail_cnt++;
		FUNC5(hdev->reset_type, &hdev->reset_pending);
		FUNC1(&hdev->pdev->dev,
			 "re-schedule reset task(%d)\n",
			 hdev->rst_stats.reset_fail_cnt);
		return true;
	}

	FUNC2(hdev);

	/* recover the handshake status when reset fail */
	FUNC4(hdev, true);

	FUNC0(&hdev->pdev->dev, "Reset fail!\n");
	return false;
}