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
struct mvpp2_txq_pcpu {int size; int /*<<< orphan*/ * tso_headers; scalar_t__ tso_headers_dma; int /*<<< orphan*/  buffs; } ;
struct mvpp2_tx_queue {int size; int /*<<< orphan*/  id; int /*<<< orphan*/  log_id; scalar_t__ descs_dma; scalar_t__ next_desc_to_proc; scalar_t__ last_desc; int /*<<< orphan*/ * descs; int /*<<< orphan*/  pcpu; } ;
struct mvpp2_port {TYPE_3__* priv; TYPE_2__* dev; } ;
struct TYPE_8__ {unsigned int nthreads; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int MVPP2_DESC_ALIGNED_SIZE ; 
 int /*<<< orphan*/  MVPP2_TXQ_DESC_ADDR_REG ; 
 int /*<<< orphan*/  MVPP2_TXQ_DESC_SIZE_REG ; 
 int /*<<< orphan*/  MVPP2_TXQ_NUM_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TSO_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mvpp2_txq_pcpu* FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct mvpp2_port *port,
			     struct mvpp2_tx_queue *txq)
{
	struct mvpp2_txq_pcpu *txq_pcpu;
	unsigned int thread;

	for (thread = 0; thread < port->priv->nthreads; thread++) {
		txq_pcpu = FUNC7(txq->pcpu, thread);
		FUNC3(txq_pcpu->buffs);

		if (txq_pcpu->tso_headers)
			FUNC1(port->dev->dev.parent,
					  txq_pcpu->size * TSO_HEADER_SIZE,
					  txq_pcpu->tso_headers,
					  txq_pcpu->tso_headers_dma);

		txq_pcpu->tso_headers = NULL;
	}

	if (txq->descs)
		FUNC1(port->dev->dev.parent,
				  txq->size * MVPP2_DESC_ALIGNED_SIZE,
				  txq->descs, txq->descs_dma);

	txq->descs             = NULL;
	txq->last_desc         = 0;
	txq->next_desc_to_proc = 0;
	txq->descs_dma         = 0;

	/* Set minimum bandwidth for disabled TXQs */
	FUNC6(port->priv, FUNC0(txq->log_id), 0);

	/* Set Tx descriptors queue starting address and size */
	thread = FUNC4(port->priv, FUNC2());
	FUNC5(port->priv, thread, MVPP2_TXQ_NUM_REG, txq->id);
	FUNC5(port->priv, thread, MVPP2_TXQ_DESC_ADDR_REG, 0);
	FUNC5(port->priv, thread, MVPP2_TXQ_DESC_SIZE_REG, 0);
	FUNC8();
}