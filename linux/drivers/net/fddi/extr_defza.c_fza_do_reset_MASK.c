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
struct fza_private {TYPE_1__* regs; int /*<<< orphan*/  int_mask; } ;
struct TYPE_2__ {int /*<<< orphan*/  int_mask; int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FZA_RESET_CLR ; 
 int /*<<< orphan*/  FZA_RESET_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct fza_private *fp)
{
	/* Reset the board. */
	FUNC1(FZA_RESET_INIT, &fp->regs->reset);
	FUNC0(&fp->regs->reset);	/* Synchronize. */
	FUNC0(&fp->regs->reset);	/* Read it back for a small delay. */
	FUNC1(FZA_RESET_CLR, &fp->regs->reset);

	/* Enable all interrupt events we handle. */
	FUNC1(fp->int_mask, &fp->regs->int_mask);
	FUNC0(&fp->regs->int_mask);	/* Synchronize. */
}