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
struct gsc_dev {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ GSC_IRQ ; 
 int /*<<< orphan*/  GSC_IRQ_FRMDONE_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC2(struct gsc_dev *dev, bool mask)
{
	u32 cfg;

	cfg = FUNC0(dev->regs + GSC_IRQ);
	if (mask)
		cfg |= GSC_IRQ_FRMDONE_MASK;
	else
		cfg &= ~GSC_IRQ_FRMDONE_MASK;
	FUNC1(cfg, dev->regs + GSC_IRQ);
}