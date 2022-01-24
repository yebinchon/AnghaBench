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
typedef  int /*<<< orphan*/  u32 ;
struct bnad {int cfg_flags; int /*<<< orphan*/  bna_lock; TYPE_2__* pcidev; TYPE_1__* msix_table; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int BNAD_CF_MSIX ; 
 size_t BNAD_MAILBOX_MSIX_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bnad *bnad)
{
	u32 irq;
	unsigned long flags;

	FUNC0(&bnad->bna_lock, flags);
	if (bnad->cfg_flags & BNAD_CF_MSIX)
		irq = bnad->msix_table[BNAD_MAILBOX_MSIX_INDEX].vector;
	else
		irq = bnad->pcidev->irq;
	FUNC1(&bnad->bna_lock, flags);

	FUNC2(irq);
}