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
struct tegra_nand_controller {int last_read_error; scalar_t__ regs; int /*<<< orphan*/  dma_complete; int /*<<< orphan*/  dev; int /*<<< orphan*/  command_complete; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ DMA_MST_CTRL ; 
 int DMA_MST_CTRL_IS_DONE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ ISR ; 
 int ISR_CMD_DONE ; 
 int ISR_CORRFAIL_ERR ; 
 int ISR_OVR ; 
 int ISR_UND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct tegra_nand_controller *ctrl = data;
	u32 isr, dma;

	isr = FUNC3(ctrl->regs + ISR);
	dma = FUNC3(ctrl->regs + DMA_MST_CTRL);
	FUNC1(ctrl->dev, "isr %08x\n", isr);

	if (!isr && !(dma & DMA_MST_CTRL_IS_DONE))
		return IRQ_NONE;

	/*
	 * The bit name is somewhat missleading: This is also set when
	 * HW ECC was successful. The data sheet states:
	 * Correctable OR Un-correctable errors occurred in the DMA transfer...
	 */
	if (isr & ISR_CORRFAIL_ERR)
		ctrl->last_read_error = true;

	if (isr & ISR_CMD_DONE)
		FUNC0(&ctrl->command_complete);

	if (isr & ISR_UND)
		FUNC2(ctrl->dev, "FIFO underrun\n");

	if (isr & ISR_OVR)
		FUNC2(ctrl->dev, "FIFO overrun\n");

	/* handle DMA interrupts */
	if (dma & DMA_MST_CTRL_IS_DONE) {
		FUNC4(dma, ctrl->regs + DMA_MST_CTRL);
		FUNC0(&ctrl->dma_complete);
	}

	/* clear interrupts */
	FUNC4(isr, ctrl->regs + ISR);

	return IRQ_HANDLED;
}