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
typedef  int /*<<< orphan*/  u32 ;
struct gfar_priv_grp {TYPE_1__* regs; int /*<<< orphan*/  napi_tx; int /*<<< orphan*/  grplock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  ievent; int /*<<< orphan*/  imask; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEVENT_TX_MASK ; 
 int /*<<< orphan*/  IMASK_TX_DISABLED ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *grp_id)
{
	struct gfar_priv_grp *grp = (struct gfar_priv_grp *)grp_id;
	unsigned long flags;
	u32 imask;

	if (FUNC3(FUNC4(&grp->napi_tx))) {
		FUNC5(&grp->grplock, flags);
		imask = FUNC1(&grp->regs->imask);
		imask &= IMASK_TX_DISABLED;
		FUNC2(&grp->regs->imask, imask);
		FUNC6(&grp->grplock, flags);
		FUNC0(&grp->napi_tx);
	} else {
		/* Clear IEVENT, so interrupts aren't called again
		 * because of the packets that have already arrived.
		 */
		FUNC2(&grp->regs->ievent, IEVENT_TX_MASK);
	}

	return IRQ_HANDLED;
}