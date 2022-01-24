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
struct TYPE_2__ {int /*<<< orphan*/  msi; } ;
struct bnx2_napi {int /*<<< orphan*/  napi; TYPE_1__ status_blk; struct bnx2* bp; } ;
struct bnx2 {int /*<<< orphan*/  intr_sem; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static irqreturn_t
FUNC4(int irq, void *dev_instance)
{
	struct bnx2_napi *bnapi = dev_instance;
	struct bnx2 *bp = bnapi->bp;

	FUNC2(bnapi->status_blk.msi);

	/* Return here if interrupt is disabled. */
	if (FUNC3(FUNC0(&bp->intr_sem) != 0))
		return IRQ_HANDLED;

	FUNC1(&bnapi->napi);

	return IRQ_HANDLED;
}