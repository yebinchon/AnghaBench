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
struct mlxsw_pci_mem_item {int /*<<< orphan*/  buf; int /*<<< orphan*/  mapaddr; int /*<<< orphan*/  size; } ;
struct mlxsw_pci {struct pci_dev* pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MLXSW_CMD_MBOX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mlxsw_pci *mlxsw_pci,
				struct mlxsw_pci_mem_item *mbox)
{
	struct pci_dev *pdev = mlxsw_pci->pdev;
	int err = 0;

	mbox->size = MLXSW_CMD_MBOX_SIZE;
	mbox->buf = FUNC1(pdev, MLXSW_CMD_MBOX_SIZE,
					 &mbox->mapaddr);
	if (!mbox->buf) {
		FUNC0(&pdev->dev, "Failed allocating memory for mailbox\n");
		err = -ENOMEM;
	}

	return err;
}