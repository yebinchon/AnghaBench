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
struct orion_mdio_dev {int /*<<< orphan*/  smi_busy_wait; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ MVMDIO_ERR_INT_CAUSE ; 
 int MVMDIO_ERR_INT_SMI_DONE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct orion_mdio_dev *dev = dev_id;

	if (FUNC0(dev->regs + MVMDIO_ERR_INT_CAUSE) &
			MVMDIO_ERR_INT_SMI_DONE) {
		FUNC2(~MVMDIO_ERR_INT_SMI_DONE,
				dev->regs + MVMDIO_ERR_INT_CAUSE);
		FUNC1(&dev->smi_busy_wait);
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}