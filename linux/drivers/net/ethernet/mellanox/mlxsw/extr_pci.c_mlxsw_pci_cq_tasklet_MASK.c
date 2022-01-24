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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  comp_rdq_count; int /*<<< orphan*/  v; int /*<<< orphan*/  comp_sdq_count; } ;
struct TYPE_4__ {TYPE_1__ cq; } ;
struct mlxsw_pci_queue {int count; TYPE_2__ u; int /*<<< orphan*/  elem_size; struct mlxsw_pci* pci; } ;
struct mlxsw_pci {int dummy; } ;

/* Variables and functions */
 int MLXSW_PCI_CQE_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct mlxsw_pci_queue*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_pci*,struct mlxsw_pci_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_pci*,struct mlxsw_pci_queue*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_pci*,struct mlxsw_pci_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_pci*,struct mlxsw_pci_queue*) ; 
 struct mlxsw_pci_queue* FUNC9 (struct mlxsw_pci*,scalar_t__) ; 
 struct mlxsw_pci_queue* FUNC10 (struct mlxsw_pci*,scalar_t__) ; 

__attribute__((used)) static void FUNC11(unsigned long data)
{
	struct mlxsw_pci_queue *q = (struct mlxsw_pci_queue *) data;
	struct mlxsw_pci *mlxsw_pci = q->pci;
	char *cqe;
	int items = 0;
	int credits = q->count >> 1;

	while ((cqe = FUNC1(q))) {
		u16 wqe_counter = FUNC6(cqe);
		u8 sendq = FUNC5(q->u.cq.v, cqe);
		u8 dqn = FUNC2(q->u.cq.v, cqe);
		char ncqe[MLXSW_PCI_CQE_SIZE_MAX];

		FUNC0(ncqe, cqe, q->elem_size);
		FUNC8(mlxsw_pci, q);

		if (sendq) {
			struct mlxsw_pci_queue *sdq;

			sdq = FUNC10(mlxsw_pci, dqn);
			FUNC4(mlxsw_pci, sdq,
						 wqe_counter, ncqe);
			q->u.cq.comp_sdq_count++;
		} else {
			struct mlxsw_pci_queue *rdq;

			rdq = FUNC9(mlxsw_pci, dqn);
			FUNC3(mlxsw_pci, rdq,
						 wqe_counter, q->u.cq.v, ncqe);
			q->u.cq.comp_rdq_count++;
		}
		if (++items == credits)
			break;
	}
	if (items)
		FUNC7(mlxsw_pci, q);
}