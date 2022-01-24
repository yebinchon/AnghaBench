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
struct hclgevf_dev {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct hclgevf_dev*) ; 
 int FUNC3 (struct hclgevf_dev*,int) ; 
 int FUNC4 (struct hclgevf_dev*) ; 
 int FUNC5 (struct hclgevf_dev*) ; 
 int FUNC6 (struct hclgevf_dev*) ; 
 int FUNC7 (struct hclgevf_dev*,int) ; 

__attribute__((used)) static int FUNC8(struct hclgevf_dev *hdev)
{
	struct pci_dev *pdev = hdev->pdev;
	int ret;

	ret = FUNC5(hdev);
	if (ret) {
		FUNC0(&pdev->dev, "pci reset failed %d\n", ret);
		return ret;
	}

	ret = FUNC2(hdev);
	if (ret) {
		FUNC0(&pdev->dev, "cmd failed %d\n", ret);
		return ret;
	}

	ret = FUNC6(hdev);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"failed(%d) to initialize RSS\n", ret);
		return ret;
	}

	ret = FUNC3(hdev, true);
	if (ret)
		return ret;

	ret = FUNC4(hdev);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"failed(%d) to initialize VLAN config\n", ret);
		return ret;
	}

	if (pdev->revision >= 0x21) {
		ret = FUNC7(hdev, true);
		if (ret)
			return ret;
	}

	FUNC1(&hdev->pdev->dev, "Reset done\n");

	return 0;
}