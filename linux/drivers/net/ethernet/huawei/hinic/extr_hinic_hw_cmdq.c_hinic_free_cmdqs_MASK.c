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
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_func_to_io {int /*<<< orphan*/  ceqs; } ;
struct hinic_cmdqs {int /*<<< orphan*/  cmdq_buf_pool; int /*<<< orphan*/  saved_wqs; int /*<<< orphan*/  cmdq_pages; int /*<<< orphan*/ * cmdq; struct hinic_hwif* hwif; } ;
typedef  enum hinic_cmdq_type { ____Placeholder_hinic_cmdq_type } hinic_cmdq_type ;

/* Variables and functions */
 int /*<<< orphan*/  HINIC_CEQ_CMDQ ; 
 int HINIC_CMDQ_SYNC ; 
 int HINIC_MAX_CMDQ_TYPES ; 
 struct hinic_func_to_io* FUNC0 (struct hinic_cmdqs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct hinic_cmdqs *cmdqs)
{
	struct hinic_func_to_io *func_to_io = FUNC0(cmdqs);
	struct hinic_hwif *hwif = cmdqs->hwif;
	struct pci_dev *pdev = hwif->pdev;
	enum hinic_cmdq_type cmdq_type;

	FUNC4(&func_to_io->ceqs, HINIC_CEQ_CMDQ);

	cmdq_type = HINIC_CMDQ_SYNC;
	for (; cmdq_type < HINIC_MAX_CMDQ_TYPES; cmdq_type++)
		FUNC3(&cmdqs->cmdq[cmdq_type]);

	FUNC5(&cmdqs->cmdq_pages, cmdqs->saved_wqs,
			    HINIC_MAX_CMDQ_TYPES);

	FUNC1(&pdev->dev, cmdqs->saved_wqs);

	FUNC2(cmdqs->cmdq_buf_pool);
}