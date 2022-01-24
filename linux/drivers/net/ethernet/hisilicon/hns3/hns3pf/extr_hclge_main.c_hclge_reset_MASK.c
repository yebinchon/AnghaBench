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
struct hnae3_ae_dev {int reset_type; } ;
struct TYPE_2__ {int reset_fail_cnt; int /*<<< orphan*/  reset_done_cnt; int /*<<< orphan*/  hw_reset_done_cnt; int /*<<< orphan*/  reset_cnt; } ;
struct hclge_dev {int reset_type; int /*<<< orphan*/  reset_request; int /*<<< orphan*/  default_reset_request; TYPE_1__ rst_stats; int /*<<< orphan*/  last_reset_time; int /*<<< orphan*/  pdev; } ;
typedef  enum hnae3_reset_type { ____Placeholder_hnae3_reset_type } hnae3_reset_type ;

/* Variables and functions */
 int HCLGE_RESET_MAX_FAIL_CNT ; 
 int /*<<< orphan*/  HNAE3_DOWN_CLIENT ; 
 int /*<<< orphan*/  HNAE3_INIT_CLIENT ; 
 int HNAE3_NONE_RESET ; 
 int /*<<< orphan*/  HNAE3_UNINIT_CLIENT ; 
 int /*<<< orphan*/  HNAE3_UP_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (struct hclge_dev*) ; 
 int FUNC1 (struct hnae3_ae_dev*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hclge_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hclge_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct hclge_dev*) ; 
 int FUNC5 (struct hclge_dev*) ; 
 int FUNC6 (struct hclge_dev*) ; 
 int FUNC7 (struct hclge_dev*) ; 
 int FUNC8 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hclge_dev*) ; 
 scalar_t__ FUNC10 (struct hclge_dev*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct hnae3_ae_dev* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct hclge_dev *hdev)
{
	struct hnae3_ae_dev *ae_dev = FUNC11(hdev->pdev);
	enum hnae3_reset_type reset_level;
	int ret;

	/* Initialize ae_dev reset status as well, in case enet layer wants to
	 * know if device is undergoing reset
	 */
	ae_dev->reset_type = hdev->reset_type;
	hdev->rst_stats.reset_cnt++;
	/* perform reset of the stack & ae device for a client */
	ret = FUNC3(hdev, HNAE3_DOWN_CLIENT);
	if (ret)
		goto err_reset;

	ret = FUNC5(hdev);
	if (ret)
		goto err_reset;

	FUNC12();
	ret = FUNC2(hdev, HNAE3_DOWN_CLIENT);
	if (ret)
		goto err_reset_lock;

	FUNC13();

	ret = FUNC7(hdev);
	if (ret)
		goto err_reset;

	if (FUNC10(hdev))
		goto err_reset;

	hdev->rst_stats.hw_reset_done_cnt++;

	ret = FUNC3(hdev, HNAE3_UNINIT_CLIENT);
	if (ret)
		goto err_reset;

	FUNC12();

	ret = FUNC8(hdev);
	if (ret)
		goto err_reset_lock;

	FUNC0(hdev);

	ret = FUNC6(hdev);
	if (ret)
		goto err_reset_lock;

	FUNC13();

	ret = FUNC3(hdev, HNAE3_INIT_CLIENT);
	/* ignore RoCE notify error if it fails HCLGE_RESET_MAX_FAIL_CNT - 1
	 * times
	 */
	if (ret &&
	    hdev->rst_stats.reset_fail_cnt < HCLGE_RESET_MAX_FAIL_CNT - 1)
		goto err_reset;

	FUNC12();

	ret = FUNC2(hdev, HNAE3_UP_CLIENT);
	if (ret)
		goto err_reset_lock;

	FUNC13();

	ret = FUNC3(hdev, HNAE3_UP_CLIENT);
	if (ret)
		goto err_reset;

	hdev->last_reset_time = jiffies;
	hdev->rst_stats.reset_fail_cnt = 0;
	hdev->rst_stats.reset_done_cnt++;
	ae_dev->reset_type = HNAE3_NONE_RESET;

	/* if default_reset_request has a higher level reset request,
	 * it should be handled as soon as possible. since some errors
	 * need this kind of reset to fix.
	 */
	reset_level = FUNC1(ae_dev,
					    &hdev->default_reset_request);
	if (reset_level != HNAE3_NONE_RESET)
		FUNC14(reset_level, &hdev->reset_request);

	return;

err_reset_lock:
	FUNC13();
err_reset:
	if (FUNC4(hdev))
		FUNC9(hdev);
}