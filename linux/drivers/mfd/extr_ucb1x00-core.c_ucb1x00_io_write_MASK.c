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
struct ucb1x00 {unsigned int io_out; int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_IO_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct ucb1x00*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC3(struct ucb1x00 *ucb, unsigned int set, unsigned int clear)
{
	unsigned long flags;

	FUNC0(&ucb->io_lock, flags);
	ucb->io_out |= set;
	ucb->io_out &= ~clear;

	FUNC2(ucb, UCB_IO_DATA, ucb->io_out);
	FUNC1(&ucb->io_lock, flags);
}