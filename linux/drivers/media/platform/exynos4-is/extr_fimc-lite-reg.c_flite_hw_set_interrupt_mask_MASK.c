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
struct fimc_lite {scalar_t__ regs; int /*<<< orphan*/  out_path; } ;

/* Variables and functions */
 scalar_t__ FIMC_IO_DMA ; 
 scalar_t__ FLITE_REG_CIGCTRL ; 
 int FLITE_REG_CIGCTRL_IRQ_DISABLE_MASK ; 
 int FLITE_REG_CIGCTRL_IRQ_ENDEN ; 
 int FLITE_REG_CIGCTRL_IRQ_LASTEN ; 
 int FLITE_REG_CIGCTRL_IRQ_OVFEN ; 
 int FLITE_REG_CIGCTRL_IRQ_STARTEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

void FUNC3(struct fimc_lite *dev)
{
	u32 cfg, intsrc;

	/* Select interrupts to be enabled for each output mode */
	if (FUNC0(&dev->out_path) == FIMC_IO_DMA) {
		intsrc = FLITE_REG_CIGCTRL_IRQ_OVFEN |
			 FLITE_REG_CIGCTRL_IRQ_LASTEN |
			 FLITE_REG_CIGCTRL_IRQ_STARTEN |
			 FLITE_REG_CIGCTRL_IRQ_ENDEN;
	} else {
		/* An output to the FIMC-IS */
		intsrc = FLITE_REG_CIGCTRL_IRQ_OVFEN |
			 FLITE_REG_CIGCTRL_IRQ_LASTEN;
	}

	cfg = FUNC1(dev->regs + FLITE_REG_CIGCTRL);
	cfg |= FLITE_REG_CIGCTRL_IRQ_DISABLE_MASK;
	cfg &= ~intsrc;
	FUNC2(cfg, dev->regs + FLITE_REG_CIGCTRL);
}