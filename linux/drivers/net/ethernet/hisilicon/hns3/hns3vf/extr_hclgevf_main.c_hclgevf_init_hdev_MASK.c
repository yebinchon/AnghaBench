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
struct pci_dev {int revision; int /*<<< orphan*/  dev; } ;
struct hclgevf_dev {int /*<<< orphan*/  state; struct pci_dev* pdev; int /*<<< orphan*/  last_reset_time; int /*<<< orphan*/  reset_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_DRIVER_NAME ; 
 int /*<<< orphan*/  HCLGEVF_STATE_IRQ_INITED ; 
 int /*<<< orphan*/  HNAE3_VF_FUNC_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hclgevf_dev*) ; 
 int FUNC4 (struct hclgevf_dev*) ; 
 int FUNC5 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct hclgevf_dev*) ; 
 int FUNC7 (struct hclgevf_dev*,int) ; 
 int FUNC8 (struct hclgevf_dev*) ; 
 int FUNC9 (struct hclgevf_dev*) ; 
 int FUNC10 (struct hclgevf_dev*) ; 
 int FUNC11 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct hclgevf_dev*) ; 
 int FUNC13 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct hclgevf_dev*) ; 
 int FUNC15 (struct hclgevf_dev*) ; 
 int FUNC16 (struct hclgevf_dev*) ; 
 int FUNC17 (struct hclgevf_dev*) ; 
 int FUNC18 (struct hclgevf_dev*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC23(struct hclgevf_dev *hdev)
{
	struct pci_dev *pdev = hdev->pdev;
	int ret;

	ret = FUNC13(hdev);
	if (ret) {
		FUNC1(&pdev->dev, "PCI initialization failed\n");
		return ret;
	}

	ret = FUNC5(hdev);
	if (ret) {
		FUNC1(&pdev->dev, "Cmd queue init failed: %d\n", ret);
		goto err_cmd_queue_init;
	}

	ret = FUNC4(hdev);
	if (ret)
		goto err_cmd_init;

	/* Get vf resource */
	ret = FUNC15(hdev);
	if (ret) {
		FUNC1(&hdev->pdev->dev,
			"Query vf status error, ret = %d.\n", ret);
		goto err_cmd_init;
	}

	ret = FUNC9(hdev);
	if (ret) {
		FUNC1(&pdev->dev, "failed(%d) to init MSI/MSI-X\n", ret);
		goto err_cmd_init;
	}

	FUNC19(hdev);
	hdev->reset_level = HNAE3_VF_FUNC_RESET;

	ret = FUNC11(hdev);
	if (ret) {
		FUNC1(&pdev->dev, "failed(%d) to init Misc IRQ(vector0)\n",
			ret);
		goto err_misc_irq_init;
	}

	FUNC22(HCLGEVF_STATE_IRQ_INITED, &hdev->state);

	ret = FUNC8(hdev);
	if (ret) {
		FUNC1(&pdev->dev, "failed(%d) to fetch configuration\n", ret);
		goto err_config;
	}

	ret = FUNC3(hdev);
	if (ret) {
		FUNC1(&pdev->dev, "failed(%d) to allocate TQPs\n", ret);
		goto err_config;
	}

	ret = FUNC17(hdev);
	if (ret) {
		FUNC1(&pdev->dev, "failed(%d) to set handle info\n", ret);
		goto err_config;
	}

	ret = FUNC7(hdev, true);
	if (ret)
		goto err_config;

	/* vf is not allowed to enable unicast/multicast promisc mode.
	 * For revision 0x20, default to disable broadcast promisc mode,
	 * firmware makes sure broadcast packets can be accepted.
	 * For revision 0x21, default to enable broadcast promisc mode.
	 */
	if (pdev->revision >= 0x21) {
		ret = FUNC18(hdev, true);
		if (ret)
			goto err_config;
	}

	/* Initialize RSS for this VF */
	ret = FUNC16(hdev);
	if (ret) {
		FUNC1(&hdev->pdev->dev,
			"failed(%d) to initialize RSS\n", ret);
		goto err_config;
	}

	ret = FUNC10(hdev);
	if (ret) {
		FUNC1(&hdev->pdev->dev,
			"failed(%d) to initialize VLAN config\n", ret);
		goto err_config;
	}

	hdev->last_reset_time = jiffies;
	FUNC2(&hdev->pdev->dev, "finished initializing %s driver\n",
		 HCLGEVF_DRIVER_NAME);

	return 0;

err_config:
	FUNC12(hdev);
err_misc_irq_init:
	FUNC20(hdev);
	FUNC21(hdev);
err_cmd_init:
	FUNC6(hdev);
err_cmd_queue_init:
	FUNC14(hdev);
	FUNC0(HCLGEVF_STATE_IRQ_INITED, &hdev->state);
	return ret;
}