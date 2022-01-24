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
struct mlxsw_pci_queue {int /*<<< orphan*/  num; scalar_t__ consumer_counter; scalar_t__ producer_counter; } ;
struct mlxsw_pci {int /*<<< orphan*/  core; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int MLXSW_PCI_AQ_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_pci_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_pci*,struct mlxsw_pci_queue*) ; 

__attribute__((used)) static int FUNC7(struct mlxsw_pci *mlxsw_pci, char *mbox,
			      struct mlxsw_pci_queue *q)
{
	int i;
	int err;

	q->producer_counter = 0;
	q->consumer_counter = 0;

	/* Set CQ of same number of this SDQ. */
	FUNC1(mbox, q->num);
	FUNC4(mbox, 3);
	FUNC2(mbox, 3); /* 8 pages */
	for (i = 0; i < MLXSW_PCI_AQ_PAGES; i++) {
		dma_addr_t mapaddr = FUNC0(q, i);

		FUNC3(mbox, i, mapaddr);
	}

	err = FUNC5(mlxsw_pci->core, mbox, q->num);
	if (err)
		return err;
	FUNC6(mlxsw_pci, q);
	return 0;
}