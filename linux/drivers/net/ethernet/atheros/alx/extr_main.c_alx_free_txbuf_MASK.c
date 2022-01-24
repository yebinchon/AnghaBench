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
struct alx_tx_queue {int /*<<< orphan*/  dev; struct alx_buffer* bufs; } ;
struct alx_buffer {int /*<<< orphan*/ * skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dma ; 
 int /*<<< orphan*/  FUNC1 (struct alx_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct alx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct alx_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  size ; 

__attribute__((used)) static void FUNC5(struct alx_tx_queue *txq, int entry)
{
	struct alx_buffer *txb = &txq->bufs[entry];

	if (FUNC2(txb, size)) {
		FUNC4(txq->dev,
				 FUNC1(txb, dma),
				 FUNC2(txb, size),
				 DMA_TO_DEVICE);
		FUNC3(txb, size, 0);
	}

	if (txb->skb) {
		FUNC0(txb->skb);
		txb->skb = NULL;
	}
}