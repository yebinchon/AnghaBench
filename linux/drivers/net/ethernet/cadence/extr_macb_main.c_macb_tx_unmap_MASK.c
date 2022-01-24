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
struct macb_tx_skb {int /*<<< orphan*/ * skb; scalar_t__ mapping; int /*<<< orphan*/  size; scalar_t__ mapped_as_page; } ;
struct macb {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct macb *bp, struct macb_tx_skb *tx_skb)
{
	if (tx_skb->mapping) {
		if (tx_skb->mapped_as_page)
			FUNC1(&bp->pdev->dev, tx_skb->mapping,
				       tx_skb->size, DMA_TO_DEVICE);
		else
			FUNC2(&bp->pdev->dev, tx_skb->mapping,
					 tx_skb->size, DMA_TO_DEVICE);
		tx_skb->mapping = 0;
	}

	if (tx_skb->skb) {
		FUNC0(tx_skb->skb);
		tx_skb->skb = NULL;
	}
}