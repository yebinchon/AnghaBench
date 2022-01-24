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
struct ucb1x00 {unsigned int io_out; unsigned int io_dir; int /*<<< orphan*/  io_lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_IO_DATA ; 
 int /*<<< orphan*/  UCB_IO_DIR ; 
 struct ucb1x00* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct ucb1x00*) ; 
 int /*<<< orphan*/  FUNC4 (struct ucb1x00*) ; 
 int /*<<< orphan*/  FUNC5 (struct ucb1x00*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct gpio_chip *chip, unsigned offset
		, int value)
{
	struct ucb1x00 *ucb = FUNC0(chip);
	unsigned long flags;
	unsigned old, mask = 1 << offset;

	FUNC1(&ucb->io_lock, flags);
	old = ucb->io_out;
	if (value)
		ucb->io_out |= mask;
	else
		ucb->io_out &= ~mask;

	FUNC4(ucb);
	if (old != ucb->io_out)
		FUNC5(ucb, UCB_IO_DATA, ucb->io_out);

	if (!(ucb->io_dir & mask)) {
		ucb->io_dir |= mask;
		FUNC5(ucb, UCB_IO_DIR, ucb->io_dir);
	}
	FUNC3(ucb);
	FUNC2(&ucb->io_lock, flags);

	return 0;
}