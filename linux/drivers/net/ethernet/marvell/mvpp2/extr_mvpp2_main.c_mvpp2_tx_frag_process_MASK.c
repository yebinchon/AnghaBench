#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct mvpp2_txq_pcpu {int dummy; } ;
struct mvpp2_tx_queue {struct mvpp2_tx_desc* descs; int /*<<< orphan*/  id; int /*<<< orphan*/  pcpu; } ;
struct mvpp2_tx_desc {int dummy; } ;
struct mvpp2_port {TYPE_2__* dev; int /*<<< orphan*/  priv; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_6__ {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MVPP2_TXD_L_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*,struct mvpp2_tx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_port*,struct mvpp2_tx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_port*,struct mvpp2_tx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_port*,struct mvpp2_tx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_tx_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct mvpp2_port*,struct mvpp2_txq_pcpu*,struct sk_buff*,struct mvpp2_tx_desc*) ; 
 struct mvpp2_tx_desc* FUNC9 (struct mvpp2_tx_queue*) ; 
 struct mvpp2_txq_pcpu* FUNC10 (int /*<<< orphan*/ ,unsigned int) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct mvpp2_port*,struct mvpp2_tx_queue*,struct mvpp2_tx_desc*) ; 

__attribute__((used)) static int FUNC16(struct mvpp2_port *port, struct sk_buff *skb,
				 struct mvpp2_tx_queue *aggr_txq,
				 struct mvpp2_tx_queue *txq)
{
	unsigned int thread = FUNC2(port->priv, FUNC14());
	struct mvpp2_txq_pcpu *txq_pcpu = FUNC10(txq->pcpu, thread);
	struct mvpp2_tx_desc *tx_desc;
	int i;
	dma_addr_t buf_dma_addr;

	for (i = 0; i < FUNC13(skb)->nr_frags; i++) {
		skb_frag_t *frag = &FUNC13(skb)->frags[i];
		void *addr = FUNC11(frag);

		tx_desc = FUNC9(aggr_txq);
		FUNC6(port, tx_desc, txq->id);
		FUNC5(port, tx_desc, FUNC12(frag));

		buf_dma_addr = FUNC0(port->dev->dev.parent, addr,
					      FUNC12(frag),
					      DMA_TO_DEVICE);
		if (FUNC1(port->dev->dev.parent, buf_dma_addr)) {
			FUNC7(txq);
			goto cleanup;
		}

		FUNC4(port, tx_desc, buf_dma_addr);

		if (i == (FUNC13(skb)->nr_frags - 1)) {
			/* Last descriptor */
			FUNC3(port, tx_desc,
					     MVPP2_TXD_L_DESC);
			FUNC8(port, txq_pcpu, skb, tx_desc);
		} else {
			/* Descriptor in the middle: Not First, Not Last */
			FUNC3(port, tx_desc, 0);
			FUNC8(port, txq_pcpu, NULL, tx_desc);
		}
	}

	return 0;
cleanup:
	/* Release all descriptors that were used to map fragments of
	 * this packet, as well as the corresponding DMA mappings
	 */
	for (i = i - 1; i >= 0; i--) {
		tx_desc = txq->descs + i;
		FUNC15(port, txq, tx_desc);
	}

	return -ENOMEM;
}