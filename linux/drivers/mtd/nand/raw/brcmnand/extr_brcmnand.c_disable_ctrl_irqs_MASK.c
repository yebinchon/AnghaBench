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
struct brcmnand_controller {int pio_poll_mode; int /*<<< orphan*/  irq; int /*<<< orphan*/  dma_irq; scalar_t__ flash_dma_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct brcmnand_controller*) ; 

__attribute__((used)) static inline void FUNC2(struct brcmnand_controller *ctrl)
{
	if (ctrl->pio_poll_mode)
		return;

	if (FUNC1(ctrl)) {
		ctrl->flash_dma_base = 0;
		FUNC0(ctrl->dma_irq);
	}

	FUNC0(ctrl->irq);
	ctrl->pio_poll_mode = true;
}