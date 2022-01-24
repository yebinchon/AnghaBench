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
struct gsc_dev {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ GSC_IN_BASE_ADDR_CB_MASK ; 
 scalar_t__ GSC_IN_BASE_ADDR_CR_MASK ; 
 scalar_t__ GSC_IN_BASE_ADDR_Y_MASK ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

void FUNC2(struct gsc_dev *dev, u32 shift,
				bool enable)
{
	u32 cfg = FUNC0(dev->regs + GSC_IN_BASE_ADDR_Y_MASK);
	u32 mask = 1 << shift;

	cfg &= ~mask;
	cfg |= enable << shift;

	FUNC1(cfg, dev->regs + GSC_IN_BASE_ADDR_Y_MASK);
	FUNC1(cfg, dev->regs + GSC_IN_BASE_ADDR_CB_MASK);
	FUNC1(cfg, dev->regs + GSC_IN_BASE_ADDR_CR_MASK);
}