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
struct wbsd_host {int isr; int /*<<< orphan*/  finish_tasklet; int /*<<< orphan*/  timeout_tasklet; int /*<<< orphan*/  crc_tasklet; int /*<<< orphan*/  fifo_tasklet; int /*<<< orphan*/  card_tasklet; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int WBSD_INT_CARD ; 
 int WBSD_INT_CRC ; 
 int WBSD_INT_FIFO_THRE ; 
 int WBSD_INT_TC ; 
 int WBSD_INT_TIMEOUT ; 
 scalar_t__ WBSD_ISR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct wbsd_host *host = dev_id;
	int isr;

	isr = FUNC0(host->base + WBSD_ISR);

	/*
	 * Was it actually our hardware that caused the interrupt?
	 */
	if (isr == 0xff || isr == 0x00)
		return IRQ_NONE;

	host->isr |= isr;

	/*
	 * Schedule tasklets as needed.
	 */
	if (isr & WBSD_INT_CARD)
		FUNC2(&host->card_tasklet);
	if (isr & WBSD_INT_FIFO_THRE)
		FUNC2(&host->fifo_tasklet);
	if (isr & WBSD_INT_CRC)
		FUNC1(&host->crc_tasklet);
	if (isr & WBSD_INT_TIMEOUT)
		FUNC1(&host->timeout_tasklet);
	if (isr & WBSD_INT_TC)
		FUNC2(&host->finish_tasklet);

	return IRQ_HANDLED;
}