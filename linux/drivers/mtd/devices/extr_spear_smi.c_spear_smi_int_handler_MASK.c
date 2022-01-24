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
struct spear_smi {int /*<<< orphan*/  cmd_complete; int /*<<< orphan*/  status; scalar_t__ io_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ SMI_SR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	u32 status = 0;
	struct spear_smi *dev = dev_id;

	status = FUNC0(dev->io_base + SMI_SR);

	if (FUNC1(!status))
		return IRQ_NONE;

	/* clear all interrupt conditions */
	FUNC3(0, dev->io_base + SMI_SR);

	/* copy the status register in dev->status */
	dev->status |= status;

	/* send the completion */
	FUNC2(&dev->cmd_complete);

	return IRQ_HANDLED;
}