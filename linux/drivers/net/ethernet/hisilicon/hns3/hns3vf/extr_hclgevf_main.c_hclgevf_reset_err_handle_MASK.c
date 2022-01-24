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
struct TYPE_4__ {scalar_t__ rst_fail_cnt; } ;
struct hclgevf_dev {int /*<<< orphan*/  reset_state; int /*<<< orphan*/  reset_pending; int /*<<< orphan*/  reset_type; TYPE_2__ rst_stats; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ HCLGEVF_RESET_MAX_FAIL_CNT ; 
 int /*<<< orphan*/  HCLGEVF_RESET_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hclgevf_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hclgevf_dev *hdev)
{
	/* recover handshake status with IMP when reset fail */
	FUNC2(hdev, true);
	hdev->rst_stats.rst_fail_cnt++;
	FUNC0(&hdev->pdev->dev, "failed to reset VF(%d)\n",
		hdev->rst_stats.rst_fail_cnt);

	if (hdev->rst_stats.rst_fail_cnt < HCLGEVF_RESET_MAX_FAIL_CNT)
		FUNC4(hdev->reset_type, &hdev->reset_pending);

	if (FUNC1(hdev)) {
		FUNC4(HCLGEVF_RESET_PENDING, &hdev->reset_state);
		FUNC3(hdev);
	}
}