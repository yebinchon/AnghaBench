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
struct pci_dev {int dummy; } ;
struct hnae3_handle {int dummy; } ;
struct hnae3_ae_dev {struct hclgevf_dev* priv; } ;
struct hclgevf_dev {int /*<<< orphan*/  last_reset_time; int /*<<< orphan*/  reset_state; int /*<<< orphan*/  reset_level; scalar_t__ default_reset_request; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_RESET_REQUESTED ; 
 int /*<<< orphan*/  HNAE3_VF_FUNC_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hclgevf_dev*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct hnae3_ae_dev* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev,
				struct hnae3_handle *handle)
{
	struct hnae3_ae_dev *ae_dev = FUNC3(pdev);
	struct hclgevf_dev *hdev = ae_dev->priv;

	FUNC0(&hdev->pdev->dev, "received reset request from VF enet\n");

	if (hdev->default_reset_request)
		hdev->reset_level =
			FUNC1(hdev,
						&hdev->default_reset_request);
	else
		hdev->reset_level = HNAE3_VF_FUNC_RESET;

	/* reset of this VF requested */
	FUNC4(HCLGEVF_RESET_REQUESTED, &hdev->reset_state);
	FUNC2(hdev);

	hdev->last_reset_time = jiffies;
}