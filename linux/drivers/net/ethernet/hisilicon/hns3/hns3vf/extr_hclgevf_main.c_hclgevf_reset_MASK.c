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
struct hnae3_ae_dev {int /*<<< orphan*/  reset_type; } ;
struct TYPE_3__ {scalar_t__ rst_fail_cnt; int /*<<< orphan*/  rst_done_cnt; int /*<<< orphan*/  hw_rst_done_cnt; int /*<<< orphan*/  rst_cnt; } ;
struct hclgevf_dev {TYPE_1__ rst_stats; int /*<<< orphan*/  last_reset_time; TYPE_2__* pdev; int /*<<< orphan*/  reset_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNAE3_DOWN_CLIENT ; 
 int /*<<< orphan*/  HNAE3_NONE_RESET ; 
 int /*<<< orphan*/  HNAE3_UP_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct hclgevf_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hclgevf_dev*) ; 
 int FUNC3 (struct hclgevf_dev*) ; 
 int FUNC4 (struct hclgevf_dev*) ; 
 int FUNC5 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct hnae3_ae_dev* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct hclgevf_dev *hdev)
{
	struct hnae3_ae_dev *ae_dev = FUNC6(hdev->pdev);
	int ret;

	/* Initialize ae_dev reset status as well, in case enet layer wants to
	 * know if device is undergoing reset
	 */
	ae_dev->reset_type = hdev->reset_type;
	hdev->rst_stats.rst_cnt++;
	FUNC7();

	/* bring down the nic to stop any ongoing TX/RX */
	ret = FUNC1(hdev, HNAE3_DOWN_CLIENT);
	if (ret)
		goto err_reset_lock;

	FUNC8();

	ret = FUNC3(hdev);
	if (ret)
		goto err_reset;

	/* check if VF could successfully fetch the hardware reset completion
	 * status from the hardware
	 */
	ret = FUNC5(hdev);
	if (ret) {
		/* can't do much in this situation, will disable VF */
		FUNC0(&hdev->pdev->dev,
			"VF failed(=%d) to fetch H/W reset completion status\n",
			ret);
		goto err_reset;
	}

	hdev->rst_stats.hw_rst_done_cnt++;

	FUNC7();

	/* now, re-initialize the nic client and ae device */
	ret = FUNC4(hdev);
	if (ret) {
		FUNC0(&hdev->pdev->dev, "failed to reset VF stack\n");
		goto err_reset_lock;
	}

	/* bring up the nic to enable TX/RX again */
	ret = FUNC1(hdev, HNAE3_UP_CLIENT);
	if (ret)
		goto err_reset_lock;

	FUNC8();

	hdev->last_reset_time = jiffies;
	ae_dev->reset_type = HNAE3_NONE_RESET;
	hdev->rst_stats.rst_done_cnt++;
	hdev->rst_stats.rst_fail_cnt = 0;

	return ret;
err_reset_lock:
	FUNC8();
err_reset:
	FUNC2(hdev);

	return ret;
}