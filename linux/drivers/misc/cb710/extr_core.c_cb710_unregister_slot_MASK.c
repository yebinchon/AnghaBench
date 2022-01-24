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
struct cb710_chip {int slots; unsigned int slot_mask; TYPE_1__* slot; } ;
struct TYPE_2__ {int /*<<< orphan*/ * irq_handler; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct cb710_chip *chip,
	unsigned slot_mask)
{
	int nr = chip->slots - 1;

	if (!(chip->slot_mask & slot_mask))
		return;

	FUNC1(&chip->slot[nr].pdev);

	/* complementary to spin_unlock() in cb710_set_irq_handler() */
	FUNC2();
	FUNC0(chip->slot[nr].irq_handler != NULL);

	/* slot->irq_handler == NULL here, so no lock needed */
	--chip->slots;
	chip->slot_mask &= ~slot_mask;
}