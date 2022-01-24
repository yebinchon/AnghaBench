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
struct cb710_slot {int /*<<< orphan*/  irq_handler; } ;
struct cb710_chip {int /*<<< orphan*/  irq_lock; } ;
typedef  int /*<<< orphan*/  cb710_irq_handler_t ;

/* Variables and functions */
 struct cb710_chip* FUNC0 (struct cb710_slot*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct cb710_slot *slot,
	cb710_irq_handler_t handler)
{
	struct cb710_chip *chip = FUNC0(slot);
	unsigned long flags;

	FUNC1(&chip->irq_lock, flags);
	slot->irq_handler = handler;
	FUNC2(&chip->irq_lock, flags);
}