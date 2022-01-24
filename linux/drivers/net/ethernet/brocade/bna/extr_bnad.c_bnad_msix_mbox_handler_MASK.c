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
typedef  int /*<<< orphan*/  u32 ;
struct bnad {int /*<<< orphan*/  bna_lock; int /*<<< orphan*/  bna; int /*<<< orphan*/  run_flags; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BNAD_RF_MBOX_IRQ_DISABLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC7(int irq, void *data)
{
	u32 intr_status;
	unsigned long flags;
	struct bnad *bnad = (struct bnad *)data;

	FUNC3(&bnad->bna_lock, flags);
	if (FUNC6(FUNC5(BNAD_RF_MBOX_IRQ_DISABLED, &bnad->run_flags))) {
		FUNC4(&bnad->bna_lock, flags);
		return IRQ_HANDLED;
	}

	FUNC1(&bnad->bna, intr_status);

	if (FUNC0(&bnad->bna, intr_status))
		FUNC2(&bnad->bna, intr_status);

	FUNC4(&bnad->bna_lock, flags);

	return IRQ_HANDLED;
}