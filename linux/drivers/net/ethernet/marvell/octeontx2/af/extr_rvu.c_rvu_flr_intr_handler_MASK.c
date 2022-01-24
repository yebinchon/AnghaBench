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
typedef  unsigned long long u8 ;
typedef  unsigned long long u64 ;
struct rvu {int vfs; TYPE_2__* flr_wrk; int /*<<< orphan*/  flr_wq; TYPE_1__* hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {int /*<<< orphan*/  work; } ;
struct TYPE_3__ {unsigned long long total_pfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 int /*<<< orphan*/  BLKADDR_RVUM ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RVU_AF_PFFLR_INT ; 
 int /*<<< orphan*/  RVU_AF_PFFLR_INT_ENA_W1C ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,int,int) ; 
 unsigned long long FUNC3 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *rvu_irq)
{
	struct rvu *rvu = (struct rvu *)rvu_irq;
	u64 intr;
	u8  pf;

	intr = FUNC3(rvu, BLKADDR_RVUM, RVU_AF_PFFLR_INT);
	if (!intr)
		goto afvf_flr;

	for (pf = 0; pf < rvu->hw->total_pfs; pf++) {
		if (intr & (1ULL << pf)) {
			/* PF is already dead do only AF related operations */
			FUNC1(rvu->flr_wq, &rvu->flr_wrk[pf].work);
			/* clear interrupt */
			FUNC4(rvu, BLKADDR_RVUM, RVU_AF_PFFLR_INT,
				    FUNC0(pf));
			/* Disable the interrupt */
			FUNC4(rvu, BLKADDR_RVUM, RVU_AF_PFFLR_INT_ENA_W1C,
				    FUNC0(pf));
		}
	}

afvf_flr:
	FUNC2(rvu, 0, 64);
	if (rvu->vfs > 64)
		FUNC2(rvu, 64, rvu->vfs - 64);

	return IRQ_HANDLED;
}