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
typedef  unsigned long u32 ;
struct fimc_is {int /*<<< orphan*/  slock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned long FIMC_IS_INT_FRAME_DONE_ISP ; 
 unsigned long FIMC_IS_INT_GENERAL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MCUCTL_REG_INTSR1 ; 
 int /*<<< orphan*/  FUNC0 (struct fimc_is*) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_is*) ; 
 unsigned long FUNC2 (struct fimc_is*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *priv)
{
	struct fimc_is *is = priv;
	unsigned long flags;
	u32 status;

	FUNC3(&is->slock, flags);
	status = FUNC2(is, MCUCTL_REG_INTSR1);

	if (status & (1UL << FIMC_IS_INT_GENERAL))
		FUNC0(is);

	if (status & (1UL << FIMC_IS_INT_FRAME_DONE_ISP))
		FUNC1(is);

	FUNC4(&is->slock, flags);
	return IRQ_HANDLED;
}