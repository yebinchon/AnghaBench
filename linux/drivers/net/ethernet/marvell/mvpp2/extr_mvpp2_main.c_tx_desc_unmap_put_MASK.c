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
struct mvpp2_txq_pcpu {int dummy; } ;
struct mvpp2_tx_queue {int /*<<< orphan*/  pcpu; } ;
struct mvpp2_tx_desc {int dummy; } ;
struct mvpp2_port {TYPE_2__* dev; int /*<<< orphan*/  priv; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_txq_pcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*,struct mvpp2_tx_desc*) ; 
 size_t FUNC4 (struct mvpp2_port*,struct mvpp2_tx_desc*) ; 
 int /*<<< orphan*/  FUNC5 (struct mvpp2_tx_queue*) ; 
 struct mvpp2_txq_pcpu* FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static inline void
FUNC8(struct mvpp2_port *port, struct mvpp2_tx_queue *txq,
		  struct mvpp2_tx_desc *desc)
{
	unsigned int thread = FUNC2(port->priv, FUNC7());
	struct mvpp2_txq_pcpu *txq_pcpu = FUNC6(txq->pcpu, thread);

	dma_addr_t buf_dma_addr =
		FUNC3(port, desc);
	size_t buf_sz =
		FUNC4(port, desc);
	if (!FUNC0(txq_pcpu, buf_dma_addr))
		FUNC1(port->dev->dev.parent, buf_dma_addr,
				 buf_sz, DMA_TO_DEVICE);
	FUNC5(txq);
}