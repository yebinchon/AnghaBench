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
struct mlxsw_pci_queue {int count; int /*<<< orphan*/  num; scalar_t__ consumer_counter; } ;
struct mlxsw_pci {int /*<<< orphan*/  core; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int MLXSW_PCI_AQ_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_pci_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_pci*,struct mlxsw_pci_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_pci*,struct mlxsw_pci_queue*) ; 
 char* FUNC10 (struct mlxsw_pci_queue*,int) ; 

__attribute__((used)) static int FUNC11(struct mlxsw_pci *mlxsw_pci, char *mbox,
			     struct mlxsw_pci_queue *q)
{
	int i;
	int err;

	q->consumer_counter = 0;

	for (i = 0; i < q->count; i++) {
		char *elem = FUNC10(q, i);

		FUNC7(elem, 1);
	}

	FUNC2(mbox, 1); /* MSI-X used */
	FUNC5(mbox, 1); /* armed */
	FUNC3(mbox, FUNC1(q->count));
	for (i = 0; i < MLXSW_PCI_AQ_PAGES; i++) {
		dma_addr_t mapaddr = FUNC0(q, i);

		FUNC4(mbox, i, mapaddr);
	}
	err = FUNC6(mlxsw_pci->core, mbox, q->num);
	if (err)
		return err;
	FUNC9(mlxsw_pci, q);
	FUNC8(mlxsw_pci, q);
	return 0;
}