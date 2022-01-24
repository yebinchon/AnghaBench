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
struct timer_list {int dummy; } ;
struct TYPE_4__ {void* expires; } ;
struct fza_private {int timer_state; TYPE_2__ reset_timer; TYPE_1__* regs; int /*<<< orphan*/  int_mask; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  int_mask; int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZA_RESET_CLR ; 
 int /*<<< orphan*/  FZA_RESET_INIT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct fza_private* fp ; 
 struct fza_private* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reset_timer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct fza_private *fp = FUNC1(fp, t, reset_timer);

	if (!fp->timer_state) {
		FUNC2("%s: RESET timed out!\n", fp->name);
		FUNC3("%s: trying harder...\n", fp->name);

		/* Assert the board reset. */
		FUNC5(FZA_RESET_INIT, &fp->regs->reset);
		FUNC4(&fp->regs->reset);		/* Synchronize. */

		fp->timer_state = 1;
		fp->reset_timer.expires = jiffies + HZ;
	} else {
		/* Clear the board reset. */
		FUNC6(FZA_RESET_CLR, &fp->regs->reset);

		/* Enable all interrupt events we handle. */
		FUNC5(fp->int_mask, &fp->regs->int_mask);
		FUNC4(&fp->regs->int_mask);		/* Synchronize. */

		fp->timer_state = 0;
		fp->reset_timer.expires = jiffies + 45 * HZ;
	}
	FUNC0(&fp->reset_timer);
}