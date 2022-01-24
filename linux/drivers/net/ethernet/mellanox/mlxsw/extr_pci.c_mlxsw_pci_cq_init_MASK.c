#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ v; } ;
struct TYPE_4__ {TYPE_1__ cq; } ;
struct mlxsw_pci_queue {int count; int /*<<< orphan*/  num; TYPE_2__ u; scalar_t__ consumer_counter; } ;
struct mlxsw_pci {int /*<<< orphan*/  core; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_CMD_MBOX_SW2HW_CQ_CQE_VER_1 ; 
 int /*<<< orphan*/  MLXSW_CMD_MBOX_SW2HW_CQ_CQE_VER_2 ; 
 int MLXSW_PCI_AQ_PAGES ; 
 scalar_t__ MLXSW_PCI_CQE_V1 ; 
 scalar_t__ MLXSW_PCI_CQE_V2 ; 
 int /*<<< orphan*/  MLXSW_PCI_EQ_COMP_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_pci_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_pci*,struct mlxsw_pci_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlxsw_pci*,struct mlxsw_pci_queue*) ; 
 char* FUNC11 (struct mlxsw_pci_queue*,int) ; 

__attribute__((used)) static int FUNC12(struct mlxsw_pci *mlxsw_pci, char *mbox,
			     struct mlxsw_pci_queue *q)
{
	int i;
	int err;

	q->consumer_counter = 0;

	for (i = 0; i < q->count; i++) {
		char *elem = FUNC11(q, i);

		FUNC8(q->u.cq.v, elem, 1);
	}

	if (q->u.cq.v == MLXSW_PCI_CQE_V1)
		FUNC3(mbox,
				MLXSW_CMD_MBOX_SW2HW_CQ_CQE_VER_1);
	else if (q->u.cq.v == MLXSW_PCI_CQE_V2)
		FUNC3(mbox,
				MLXSW_CMD_MBOX_SW2HW_CQ_CQE_VER_2);

	FUNC2(mbox, MLXSW_PCI_EQ_COMP_NUM);
	FUNC6(mbox, 0);
	FUNC4(mbox, FUNC1(q->count));
	for (i = 0; i < MLXSW_PCI_AQ_PAGES; i++) {
		dma_addr_t mapaddr = FUNC0(q, i);

		FUNC5(mbox, i, mapaddr);
	}
	err = FUNC7(mlxsw_pci->core, mbox, q->num);
	if (err)
		return err;
	FUNC10(mlxsw_pci, q);
	FUNC9(mlxsw_pci, q);
	return 0;
}