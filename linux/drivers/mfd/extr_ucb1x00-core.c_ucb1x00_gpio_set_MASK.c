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
struct ucb1x00 {int io_out; int /*<<< orphan*/  io_lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_IO_DATA ; 
 struct ucb1x00* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ucb1x00*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucb1x00*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucb1x00*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct gpio_chip *chip, unsigned offset, int value)
{
	struct ucb1x00 *ucb = FUNC0(chip);
	unsigned long flags;

	FUNC1(&ucb->io_lock, flags);
	if (value)
		ucb->io_out |= 1 << offset;
	else
		ucb->io_out &= ~(1 << offset);

	FUNC4(ucb);
	FUNC5(ucb, UCB_IO_DATA, ucb->io_out);
	FUNC3(ucb);
	FUNC2(&ucb->io_lock, flags);
}