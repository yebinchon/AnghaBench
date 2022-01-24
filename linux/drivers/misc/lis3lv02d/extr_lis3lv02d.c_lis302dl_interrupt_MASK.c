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
struct lis3lv02d {int /*<<< orphan*/  wake_thread; int /*<<< orphan*/  async_queue; int /*<<< orphan*/  misc_wait; int /*<<< orphan*/  count; int /*<<< orphan*/  misc_opened; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct lis3lv02d *lis3 = data;

	if (!FUNC3(0, &lis3->misc_opened))
		goto out;

	/*
	 * Be careful: on some HP laptops the bios force DD when on battery and
	 * the lid is closed. This leads to interrupts as soon as a little move
	 * is done.
	 */
	FUNC0(&lis3->count);

	FUNC4(&lis3->misc_wait);
	FUNC2(&lis3->async_queue, SIGIO, POLL_IN);
out:
	if (FUNC1(&lis3->wake_thread))
		return IRQ_WAKE_THREAD;
	return IRQ_HANDLED;
}