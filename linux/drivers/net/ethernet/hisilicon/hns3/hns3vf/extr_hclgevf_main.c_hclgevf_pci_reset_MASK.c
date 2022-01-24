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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hclgevf_dev {scalar_t__ reset_type; int /*<<< orphan*/  state; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_STATE_IRQ_INITED ; 
 scalar_t__ HNAE3_VF_FULL_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct hclgevf_dev*) ; 
 int FUNC3 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct hclgevf_dev *hdev)
{
	struct pci_dev *pdev = hdev->pdev;
	int ret = 0;

	if (hdev->reset_type == HNAE3_VF_FULL_RESET &&
	    FUNC8(HCLGEVF_STATE_IRQ_INITED, &hdev->state)) {
		FUNC4(hdev);
		FUNC5(hdev);
		FUNC0(HCLGEVF_STATE_IRQ_INITED, &hdev->state);
	}

	if (!FUNC8(HCLGEVF_STATE_IRQ_INITED, &hdev->state)) {
		FUNC6(pdev);
		ret = FUNC2(hdev);
		if (ret) {
			FUNC1(&pdev->dev,
				"failed(%d) to init MSI/MSI-X\n", ret);
			return ret;
		}

		ret = FUNC3(hdev);
		if (ret) {
			FUNC5(hdev);
			FUNC1(&pdev->dev, "failed(%d) to init Misc IRQ(vector0)\n",
				ret);
			return ret;
		}

		FUNC7(HCLGEVF_STATE_IRQ_INITED, &hdev->state);
	}

	return ret;
}