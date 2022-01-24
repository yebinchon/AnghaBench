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
struct fimc_dev {scalar_t__ regs; } ;
struct fimc_addr {int /*<<< orphan*/  cr; int /*<<< orphan*/  cb; int /*<<< orphan*/  y; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FIMC_REG_CIREAL_ISIZE ; 
 int /*<<< orphan*/  FIMC_REG_CIREAL_ISIZE_ADDR_CH_DIS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(struct fimc_dev *dev, struct fimc_addr *paddr)
{
	u32 cfg = FUNC3(dev->regs + FIMC_REG_CIREAL_ISIZE);
	cfg |= FIMC_REG_CIREAL_ISIZE_ADDR_CH_DIS;
	FUNC4(cfg, dev->regs + FIMC_REG_CIREAL_ISIZE);

	FUNC4(paddr->y, dev->regs + FUNC2(0));
	FUNC4(paddr->cb, dev->regs + FUNC0(0));
	FUNC4(paddr->cr, dev->regs + FUNC1(0));

	cfg &= ~FIMC_REG_CIREAL_ISIZE_ADDR_CH_DIS;
	FUNC4(cfg, dev->regs + FIMC_REG_CIREAL_ISIZE);
}