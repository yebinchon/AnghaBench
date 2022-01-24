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
struct moxart_host {int is_removed; int /*<<< orphan*/  lock; int /*<<< orphan*/ * mrq; int /*<<< orphan*/  mmc; scalar_t__ base; int /*<<< orphan*/  dma_chan_rx; int /*<<< orphan*/  dma_chan_tx; scalar_t__ have_dma; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CARD_CHANGE ; 
 int CARD_DETECT ; 
 int FIFO_ORUN ; 
 int FIFO_URUN ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MASK_INTR_PIO ; 
 scalar_t__ REG_CLEAR ; 
 scalar_t__ REG_INTERRUPT_MASK ; 
 scalar_t__ REG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct moxart_host*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *devid)
{
	struct moxart_host *host = (struct moxart_host *)devid;
	u32 status;
	unsigned long flags;

	FUNC4(&host->lock, flags);

	status = FUNC3(host->base + REG_STATUS);
	if (status & CARD_CHANGE) {
		host->is_removed = status & CARD_DETECT;
		if (host->is_removed && host->have_dma) {
			FUNC0(host->dma_chan_tx);
			FUNC0(host->dma_chan_rx);
		}
		host->mrq = NULL;
		FUNC6(MASK_INTR_PIO, host->base + REG_CLEAR);
		FUNC6(CARD_CHANGE, host->base + REG_INTERRUPT_MASK);
		FUNC1(host->mmc, 0);
	}
	if (status & (FIFO_ORUN | FIFO_URUN) && host->mrq)
		FUNC2(host);

	FUNC5(&host->lock, flags);

	return IRQ_HANDLED;
}