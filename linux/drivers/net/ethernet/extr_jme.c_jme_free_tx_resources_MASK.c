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
struct jme_ring {int /*<<< orphan*/  nr_free; int /*<<< orphan*/  next_to_clean; scalar_t__ next_to_use; struct jme_buffer_info* bufinf; scalar_t__ dma; scalar_t__ dmaalloc; int /*<<< orphan*/ * desc; int /*<<< orphan*/ * alloc; } ;
struct jme_buffer_info {scalar_t__ start_xmit; scalar_t__ nr_desc; scalar_t__ len; scalar_t__ mapping; int /*<<< orphan*/ * skb; } ;
struct jme_adapter {int tx_ring_size; TYPE_1__* pdev; struct jme_ring* txring; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_buffer_info*) ; 

__attribute__((used)) static void
FUNC5(struct jme_adapter *jme)
{
	int i;
	struct jme_ring *txring = &(jme->txring[0]);
	struct jme_buffer_info *txbi;

	if (txring->alloc) {
		if (txring->bufinf) {
			for (i = 0 ; i < jme->tx_ring_size ; ++i) {
				txbi = txring->bufinf + i;
				if (txbi->skb) {
					FUNC2(txbi->skb);
					txbi->skb = NULL;
				}
				txbi->mapping		= 0;
				txbi->len		= 0;
				txbi->nr_desc		= 0;
				txbi->start_xmit	= 0;
			}
			FUNC4(txring->bufinf);
		}

		FUNC3(&(jme->pdev->dev),
				  FUNC0(jme->tx_ring_size),
				  txring->alloc,
				  txring->dmaalloc);

		txring->alloc		= NULL;
		txring->desc		= NULL;
		txring->dmaalloc	= 0;
		txring->dma		= 0;
		txring->bufinf		= NULL;
	}
	txring->next_to_use	= 0;
	FUNC1(&txring->next_to_clean, 0);
	FUNC1(&txring->nr_free, 0);
}