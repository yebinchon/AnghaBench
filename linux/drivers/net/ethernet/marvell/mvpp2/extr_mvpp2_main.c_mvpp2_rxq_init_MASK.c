#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mvpp2_rx_queue {int size; int descs_dma; int last_desc; int id; int /*<<< orphan*/  descs; } ;
struct mvpp2_port {int rx_ring_size; TYPE_3__* priv; TYPE_2__* dev; } ;
struct TYPE_8__ {scalar_t__ hw_version; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MVPP21 ; 
 int MVPP22_DESC_ADDR_OFFS ; 
 int MVPP2_DESC_ALIGNED_SIZE ; 
 int /*<<< orphan*/  MVPP2_RXQ_DESC_ADDR_REG ; 
 int /*<<< orphan*/  MVPP2_RXQ_DESC_SIZE_REG ; 
 int /*<<< orphan*/  MVPP2_RXQ_INDEX_REG ; 
 int /*<<< orphan*/  MVPP2_RXQ_NUM_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NET_SKB_PAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_port*,struct mvpp2_rx_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_port*,struct mvpp2_rx_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_port*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct mvpp2_port *port,
			  struct mvpp2_rx_queue *rxq)

{
	unsigned int thread;
	u32 rxq_dma;

	rxq->size = port->rx_ring_size;

	/* Allocate memory for RX descriptors */
	rxq->descs = FUNC1(port->dev->dev.parent,
					rxq->size * MVPP2_DESC_ALIGNED_SIZE,
					&rxq->descs_dma, GFP_KERNEL);
	if (!rxq->descs)
		return -ENOMEM;

	rxq->last_desc = rxq->size - 1;

	/* Zero occupied and non-occupied counters - direct access */
	FUNC9(port->priv, FUNC0(rxq->id), 0);

	/* Set Rx descriptors queue starting address - indirect access */
	thread = FUNC3(port->priv, FUNC2());
	FUNC8(port->priv, thread, MVPP2_RXQ_NUM_REG, rxq->id);
	if (port->priv->hw_version == MVPP21)
		rxq_dma = rxq->descs_dma;
	else
		rxq_dma = rxq->descs_dma >> MVPP22_DESC_ADDR_OFFS;
	FUNC8(port->priv, thread, MVPP2_RXQ_DESC_ADDR_REG, rxq_dma);
	FUNC8(port->priv, thread, MVPP2_RXQ_DESC_SIZE_REG, rxq->size);
	FUNC8(port->priv, thread, MVPP2_RXQ_INDEX_REG, 0);
	FUNC10();

	/* Set Offset */
	FUNC6(port, rxq->id, NET_SKB_PAD);

	/* Set coalescing pkts and time */
	FUNC4(port, rxq);
	FUNC5(port, rxq);

	/* Add number of descriptors ready for receiving packets */
	FUNC7(port, rxq->id, 0, rxq->size);

	return 0;
}