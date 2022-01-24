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
typedef  int /*<<< orphan*/  u64 ;
struct rvu {int vfs; int /*<<< orphan*/  afvf_wq_info; TYPE_1__* hw; int /*<<< orphan*/  afpf_wq_info; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int total_pfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKADDR_RVUM ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RVU_AF_PFAF_MBOX_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rvu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *rvu_irq)
{
	struct rvu *rvu = (struct rvu *)rvu_irq;
	int vfs = rvu->vfs;
	u64 intr;

	intr = FUNC3(rvu, BLKADDR_RVUM, RVU_AF_PFAF_MBOX_INT);
	/* Clear interrupts */
	FUNC4(rvu, BLKADDR_RVUM, RVU_AF_PFAF_MBOX_INT, intr);

	/* Sync with mbox memory region */
	FUNC1();

	FUNC2(&rvu->afpf_wq_info, 0, rvu->hw->total_pfs, intr);

	/* Handle VF interrupts */
	if (vfs > 64) {
		intr = FUNC5(rvu, FUNC0(1));
		FUNC6(rvu, FUNC0(1), intr);

		FUNC2(&rvu->afvf_wq_info, 64, vfs, intr);
		vfs -= 64;
	}

	intr = FUNC5(rvu, FUNC0(0));
	FUNC6(rvu, FUNC0(0), intr);

	FUNC2(&rvu->afvf_wq_info, 0, vfs, intr);

	return IRQ_HANDLED;
}