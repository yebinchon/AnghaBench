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
struct hnae3_ae_dev {struct hclgevf_dev* priv; struct pci_dev* pdev; } ;
struct hclgevf_dev {int /*<<< orphan*/  keep_alive_task; int /*<<< orphan*/  keep_alive_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct hnae3_ae_dev*) ; 
 int FUNC3 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  hclgevf_keep_alive_task ; 
 int /*<<< orphan*/  hclgevf_keep_alive_timer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hnae3_ae_dev *ae_dev)
{
	struct pci_dev *pdev = ae_dev->pdev;
	struct hclgevf_dev *hdev;
	int ret;

	ret = FUNC2(ae_dev);
	if (ret) {
		FUNC1(&pdev->dev, "hclge device allocation failed\n");
		return ret;
	}

	ret = FUNC3(ae_dev->priv);
	if (ret) {
		FUNC1(&pdev->dev, "hclge device initialization failed\n");
		return ret;
	}

	hdev = ae_dev->priv;
	FUNC4(&hdev->keep_alive_timer, hclgevf_keep_alive_timer, 0);
	FUNC0(&hdev->keep_alive_task, hclgevf_keep_alive_task);

	return 0;
}