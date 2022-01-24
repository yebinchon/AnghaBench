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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hw_wqe {int /*<<< orphan*/  cmdq_wqe; } ;
struct hinic_cmdqs {struct hinic_hwif* hwif; struct hinic_cmdq* cmdq; } ;
struct hinic_cmdq_header {int /*<<< orphan*/  saved_data; } ;
struct hinic_cmdq {int /*<<< orphan*/  wq; } ;
typedef  enum hinic_cmdq_type { ____Placeholder_hinic_cmdq_type } hinic_cmdq_type ;

/* Variables and functions */
 int /*<<< orphan*/  ARM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hinic_cmdq_header* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HINIC_SET_ARM_CMDQ ; 
 scalar_t__ FUNC3 (struct hinic_hw_wqe*) ; 
 int /*<<< orphan*/  TYPE ; 
 int /*<<< orphan*/  WQE_LCMD_SIZE ; 
 int /*<<< orphan*/  WQE_SCMD_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct hinic_cmdq*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct hinic_cmdq*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 struct hinic_hw_wqe* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct hinic_cmdqs*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(void *handle, u32 ceqe_data)
{
	enum hinic_cmdq_type cmdq_type = FUNC0(ceqe_data, TYPE);
	struct hinic_cmdqs *cmdqs = (struct hinic_cmdqs *)handle;
	struct hinic_cmdq *cmdq = &cmdqs->cmdq[cmdq_type];
	struct hinic_cmdq_header *header;
	struct hinic_hw_wqe *hw_wqe;
	int err, set_arm = 0;
	u32 saved_data;
	u16 ci;

	/* Read the smallest wqe size for getting wqe size */
	while ((hw_wqe = FUNC8(cmdq->wq, WQE_SCMD_SIZE, &ci))) {
		if (FUNC3(hw_wqe))
			break;

		header = FUNC1(&hw_wqe->cmdq_wqe);
		saved_data = FUNC4(header->saved_data);

		if (FUNC2(saved_data, ARM)) {
			/* arm_bit was set until here */
			set_arm = 0;

			if (FUNC5(cmdq, &hw_wqe->cmdq_wqe))
				break;
		} else {
			set_arm = 1;

			hw_wqe = FUNC8(cmdq->wq, WQE_LCMD_SIZE, &ci);
			if (FUNC3(hw_wqe))
				break;

			if (FUNC6(cmdq, ci, &hw_wqe->cmdq_wqe))
				break;
		}
	}

	if (set_arm) {
		struct hinic_hwif *hwif = cmdqs->hwif;
		struct pci_dev *pdev = hwif->pdev;

		err = FUNC9(cmdqs, HINIC_SET_ARM_CMDQ, cmdq_type);
		if (err)
			FUNC7(&pdev->dev, "Failed to set arm for CMDQ\n");
	}
}