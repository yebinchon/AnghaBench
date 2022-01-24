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
struct mtk_eth {int /*<<< orphan*/  tx_int_status_reg; int /*<<< orphan*/  tx_int_mask_reg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MTK_PDMA_INT_MASK ; 
 int /*<<< orphan*/  MTK_PDMA_INT_STATUS ; 
 int MTK_RX_DONE_INT ; 
 int MTK_TX_DONE_INT ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 int FUNC2 (struct mtk_eth*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *_eth)
{
	struct mtk_eth *eth = _eth;

	if (FUNC2(eth, MTK_PDMA_INT_MASK) & MTK_RX_DONE_INT) {
		if (FUNC2(eth, MTK_PDMA_INT_STATUS) & MTK_RX_DONE_INT)
			FUNC0(irq, _eth);
	}
	if (FUNC2(eth, eth->tx_int_mask_reg) & MTK_TX_DONE_INT) {
		if (FUNC2(eth, eth->tx_int_status_reg) & MTK_TX_DONE_INT)
			FUNC1(irq, _eth);
	}

	return IRQ_HANDLED;
}