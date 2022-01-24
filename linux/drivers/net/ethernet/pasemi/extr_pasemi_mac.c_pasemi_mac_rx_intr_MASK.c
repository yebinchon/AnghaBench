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
struct pasemi_dmachan {int* status; int /*<<< orphan*/  chno; } ;
struct pasemi_mac_rxring {struct pasemi_dmachan chan; struct pasemi_mac* mac; } ;
struct pasemi_mac {int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int PAS_IOB_DMA_RXCH_RESET_DINTC ; 
 unsigned int PAS_IOB_DMA_RXCH_RESET_SINTC ; 
 int PAS_STATUS_CAUSE_M ; 
 int PAS_STATUS_ERROR ; 
 int PAS_STATUS_SOFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	const struct pasemi_mac_rxring *rxring = data;
	struct pasemi_mac *mac = rxring->mac;
	const struct pasemi_dmachan *chan = &rxring->chan;
	unsigned int reg;

	if (!(*chan->status & PAS_STATUS_CAUSE_M))
		return IRQ_NONE;

	/* Don't reset packet count so it won't fire again but clear
	 * all others.
	 */

	reg = 0;
	if (*chan->status & PAS_STATUS_SOFT)
		reg |= PAS_IOB_DMA_RXCH_RESET_SINTC;
	if (*chan->status & PAS_STATUS_ERROR)
		reg |= PAS_IOB_DMA_RXCH_RESET_DINTC;

	FUNC1(&mac->napi);

	FUNC2(FUNC0(chan->chno), reg);

	return IRQ_HANDLED;
}