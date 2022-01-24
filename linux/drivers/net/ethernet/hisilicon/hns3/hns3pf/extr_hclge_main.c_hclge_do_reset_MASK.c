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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hnae3_handle {int dummy; } ;
struct hclge_dev {int reset_type; int /*<<< orphan*/  reset_pending; int /*<<< orphan*/  hw; struct pci_dev* pdev; TYPE_1__* vport; } ;
struct TYPE_2__ {struct hnae3_handle nic; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_FUN_RST_ING ; 
 int /*<<< orphan*/  HCLGE_GLOBAL_RESET_BIT ; 
 int /*<<< orphan*/  HCLGE_GLOBAL_RESET_REG ; 
#define  HNAE3_FLR_RESET 130 
#define  HNAE3_FUNC_RESET 129 
#define  HNAE3_GLOBAL_RESET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int const,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct hclge_dev *hdev)
{
	struct hnae3_handle *handle = &hdev->vport[0].nic;
	struct pci_dev *pdev = hdev->pdev;
	u32 val;

	if (FUNC2(handle)) {
		FUNC0(&pdev->dev, "Hardware reset not finish\n");
		FUNC0(&pdev->dev, "func_rst_reg:0x%x, global_rst_reg:0x%x\n",
			 FUNC3(&hdev->hw, HCLGE_FUN_RST_ING),
			 FUNC3(&hdev->hw, HCLGE_GLOBAL_RESET_REG));
		return;
	}

	switch (hdev->reset_type) {
	case HNAE3_GLOBAL_RESET:
		val = FUNC3(&hdev->hw, HCLGE_GLOBAL_RESET_REG);
		FUNC6(val, HCLGE_GLOBAL_RESET_BIT, 1);
		FUNC5(&hdev->hw, HCLGE_GLOBAL_RESET_REG, val);
		FUNC0(&pdev->dev, "Global Reset requested\n");
		break;
	case HNAE3_FUNC_RESET:
		FUNC0(&pdev->dev, "PF Reset requested\n");
		/* schedule again to check later */
		FUNC7(HNAE3_FUNC_RESET, &hdev->reset_pending);
		FUNC4(hdev);
		break;
	case HNAE3_FLR_RESET:
		FUNC0(&pdev->dev, "FLR requested\n");
		/* schedule again to check later */
		FUNC7(HNAE3_FLR_RESET, &hdev->reset_pending);
		FUNC4(hdev);
		break;
	default:
		FUNC1(&pdev->dev,
			 "Unsupported reset type: %d\n", hdev->reset_type);
		break;
	}
}