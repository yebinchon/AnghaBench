#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/  tail; } ;
struct gelic_card {int irq_status; int irq_mask; int /*<<< orphan*/ * netdev; int /*<<< orphan*/  tx_lock; TYPE_1__ tx_chain; scalar_t__ tx_dma_progress; int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int GELIC_CARD_PORT_STATUS_CHANGED ; 
 int GELIC_CARD_RXINT ; 
 int GELIC_CARD_TXINT ; 
 int GELIC_CARD_WLAN_COMMAND_COMPLETED ; 
 int GELIC_CARD_WLAN_EVENT_RECEIVED ; 
 size_t GELIC_PORT_WIRELESS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct gelic_card*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gelic_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gelic_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gelic_card*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *ptr)
{
	unsigned long flags;
	struct gelic_card *card = ptr;
	u64 status;

	status = card->irq_status;

	if (!status)
		return IRQ_NONE;

	status &= card->irq_mask;

	if (status & GELIC_CARD_RXINT) {
		FUNC3(card);
		FUNC5(&card->napi);
	}

	if (status & GELIC_CARD_TXINT) {
		FUNC6(&card->tx_lock, flags);
		card->tx_dma_progress = 0;
		FUNC2(card, 0);
		/* kick outstanding tx descriptor if any */
		FUNC1(card, card->tx_chain.tail);
		FUNC7(&card->tx_lock, flags);
	}

	/* ether port status changed */
	if (status & GELIC_CARD_PORT_STATUS_CHANGED)
		FUNC0(card, 1);

#ifdef CONFIG_GELIC_WIRELESS
	if (status & (GELIC_CARD_WLAN_EVENT_RECEIVED |
		      GELIC_CARD_WLAN_COMMAND_COMPLETED))
		gelic_wl_interrupt(card->netdev[GELIC_PORT_WIRELESS], status);
#endif

	return IRQ_HANDLED;
}