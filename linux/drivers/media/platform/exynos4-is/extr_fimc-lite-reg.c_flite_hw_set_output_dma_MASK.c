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
typedef  int /*<<< orphan*/  u32 ;
struct flite_frame {int dummy; } ;
struct fimc_lite {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FLITE_REG_CIGCTRL ; 
 int /*<<< orphan*/  FLITE_REG_CIGCTRL_ODMA_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct fimc_lite*,struct flite_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_lite*,struct flite_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fimc_lite*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(struct fimc_lite *dev, struct flite_frame *f,
			     bool enable)
{
	u32 cfg = FUNC3(dev->regs + FLITE_REG_CIGCTRL);

	if (!enable) {
		cfg |= FLITE_REG_CIGCTRL_ODMA_DISABLE;
		FUNC4(cfg, dev->regs + FLITE_REG_CIGCTRL);
		return;
	}

	cfg &= ~FLITE_REG_CIGCTRL_ODMA_DISABLE;
	FUNC4(cfg, dev->regs + FLITE_REG_CIGCTRL);

	FUNC1(dev, f);
	FUNC0(dev, f);
	FUNC2(dev, 0);
}