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
struct fimc_lite {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FLITE_REG_CIGCTRL ; 
 int FLITE_REG_CIGCTRL_SWRST ; 
 int FLITE_REG_CIGCTRL_SWRST_RDY ; 
 int FLITE_REG_CIGCTRL_SWRST_REQ ; 
 int /*<<< orphan*/  FLITE_RESET_TIMEOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

void FUNC5(struct fimc_lite *dev)
{
	unsigned long end = jiffies + FUNC0(FLITE_RESET_TIMEOUT);
	u32 cfg;

	cfg = FUNC1(dev->regs + FLITE_REG_CIGCTRL);
	cfg |= FLITE_REG_CIGCTRL_SWRST_REQ;
	FUNC4(cfg, dev->regs + FLITE_REG_CIGCTRL);

	while (FUNC2(end)) {
		cfg = FUNC1(dev->regs + FLITE_REG_CIGCTRL);
		if (cfg & FLITE_REG_CIGCTRL_SWRST_RDY)
			break;
		FUNC3(1000, 5000);
	}

	cfg |= FLITE_REG_CIGCTRL_SWRST;
	FUNC4(cfg, dev->regs + FLITE_REG_CIGCTRL);
}