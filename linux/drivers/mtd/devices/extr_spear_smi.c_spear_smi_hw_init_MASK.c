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
typedef  int u32 ;
struct spear_smi {int /*<<< orphan*/  lock; scalar_t__ io_base; int /*<<< orphan*/  clk_rate; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int BANK_EN ; 
 int FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int DSEL_TIME ; 
 int HOLD1 ; 
 scalar_t__ SMI_CR1 ; 
 scalar_t__ SMI_SR ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct spear_smi *dev)
{
	unsigned long rate = 0;
	u32 prescale = 0;
	u32 val;

	rate = FUNC1(dev->clk);

	/* functional clock of smi */
	prescale = FUNC0(rate, dev->clk_rate);

	/*
	 * setting the standard values, fast mode, prescaler for
	 * SMI_MAX_CLOCK_FREQ (50MHz) operation and bank enable
	 */
	val = HOLD1 | BANK_EN | DSEL_TIME | (prescale << 8);

	FUNC2(&dev->lock);
	/* clear all interrupt conditions */
	FUNC4(0, dev->io_base + SMI_SR);

	FUNC4(val, dev->io_base + SMI_CR1);
	FUNC3(&dev->lock);
}