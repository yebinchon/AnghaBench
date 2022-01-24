#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mvpp2_rx_queue {int size; int /*<<< orphan*/  id; scalar_t__ descs_dma; scalar_t__ next_desc_to_proc; scalar_t__ last_desc; int /*<<< orphan*/ * descs; } ;
struct mvpp2_port {int /*<<< orphan*/  priv; TYPE_2__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int MVPP2_DESC_ALIGNED_SIZE ; 
 int /*<<< orphan*/  MVPP2_RXQ_DESC_ADDR_REG ; 
 int /*<<< orphan*/  MVPP2_RXQ_DESC_SIZE_REG ; 
 int /*<<< orphan*/  MVPP2_RXQ_NUM_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_port*,struct mvpp2_rx_queue*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct mvpp2_port *port,
			     struct mvpp2_rx_queue *rxq)
{
	unsigned int thread;

	FUNC4(port, rxq);

	if (rxq->descs)
		FUNC1(port->dev->dev.parent,
				  rxq->size * MVPP2_DESC_ALIGNED_SIZE,
				  rxq->descs,
				  rxq->descs_dma);

	rxq->descs             = NULL;
	rxq->last_desc         = 0;
	rxq->next_desc_to_proc = 0;
	rxq->descs_dma         = 0;

	/* Clear Rx descriptors queue starting address and size;
	 * free descriptor number
	 */
	FUNC6(port->priv, FUNC0(rxq->id), 0);
	thread = FUNC3(port->priv, FUNC2());
	FUNC5(port->priv, thread, MVPP2_RXQ_NUM_REG, rxq->id);
	FUNC5(port->priv, thread, MVPP2_RXQ_DESC_ADDR_REG, 0);
	FUNC5(port->priv, thread, MVPP2_RXQ_DESC_SIZE_REG, 0);
	FUNC7();
}