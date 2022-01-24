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
typedef  scalar_t__ u8 ;
struct mlxsw_pci_queue_elem_info {int dummy; } ;
struct mlxsw_pci_queue {int count; scalar_t__ num; scalar_t__ producer_counter; scalar_t__ consumer_counter; } ;
struct mlxsw_pci {int /*<<< orphan*/  core; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MLXSW_PCI_AQ_PAGES ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_pci_queue*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_pci*,struct mlxsw_pci_queue*) ; 
 struct mlxsw_pci_queue_elem_info* FUNC8 (struct mlxsw_pci_queue*,int) ; 
 struct mlxsw_pci_queue_elem_info* FUNC9 (struct mlxsw_pci_queue*) ; 
 int FUNC10 (struct mlxsw_pci*,struct mlxsw_pci_queue_elem_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxsw_pci*,struct mlxsw_pci_queue_elem_info*) ; 
 scalar_t__ FUNC12 (struct mlxsw_pci*) ; 

__attribute__((used)) static int FUNC13(struct mlxsw_pci *mlxsw_pci, char *mbox,
			      struct mlxsw_pci_queue *q)
{
	struct mlxsw_pci_queue_elem_info *elem_info;
	u8 sdq_count = FUNC12(mlxsw_pci);
	int i;
	int err;

	q->producer_counter = 0;
	q->consumer_counter = 0;

	/* Set CQ of same number of this RDQ with base
	 * above SDQ count as the lower ones are assigned to SDQs.
	 */
	FUNC3(mbox, sdq_count + q->num);
	FUNC4(mbox, 3); /* 8 pages */
	for (i = 0; i < MLXSW_PCI_AQ_PAGES; i++) {
		dma_addr_t mapaddr = FUNC1(q, i);

		FUNC5(mbox, i, mapaddr);
	}

	err = FUNC6(mlxsw_pci->core, mbox, q->num);
	if (err)
		return err;

	FUNC7(mlxsw_pci, q);

	for (i = 0; i < q->count; i++) {
		elem_info = FUNC9(q);
		FUNC0(!elem_info);
		err = FUNC10(mlxsw_pci, elem_info);
		if (err)
			goto rollback;
		/* Everything is set up, ring doorbell to pass elem to HW */
		q->producer_counter++;
		FUNC7(mlxsw_pci, q);
	}

	return 0;

rollback:
	for (i--; i >= 0; i--) {
		elem_info = FUNC8(q, i);
		FUNC11(mlxsw_pci, elem_info);
	}
	FUNC2(mlxsw_pci->core, q->num);

	return err;
}