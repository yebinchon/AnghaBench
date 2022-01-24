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
typedef  int u32 ;
struct mvpp2_tx_queue {scalar_t__ descs; } ;
struct mvpp2_port {int ntxqs; int /*<<< orphan*/  priv; struct mvpp2_tx_queue** txqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVPP2_TXP_SCHED_PORT_INDEX_REG ; 
 int /*<<< orphan*/  MVPP2_TXP_SCHED_Q_CMD_REG ; 
 int FUNC0 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mvpp2_port *port)
{
	u32 qmap;
	int queue;
	int tx_port_num = FUNC0(port);

	/* Enable all initialized TXs. */
	qmap = 0;
	for (queue = 0; queue < port->ntxqs; queue++) {
		struct mvpp2_tx_queue *txq = port->txqs[queue];

		if (txq->descs)
			qmap |= (1 << queue);
	}

	FUNC1(port->priv, MVPP2_TXP_SCHED_PORT_INDEX_REG, tx_port_num);
	FUNC1(port->priv, MVPP2_TXP_SCHED_Q_CMD_REG, qmap);
}