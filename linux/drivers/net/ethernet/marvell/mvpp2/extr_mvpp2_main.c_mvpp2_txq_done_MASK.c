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
struct netdev_queue {int dummy; } ;
struct mvpp2_txq_pcpu {scalar_t__ thread; scalar_t__ count; scalar_t__ wake_threshold; } ;
struct mvpp2_tx_queue {int /*<<< orphan*/  log_id; } ;
struct mvpp2_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_port*,struct mvpp2_tx_queue*,struct mvpp2_txq_pcpu*,int) ; 
 int FUNC2 (struct mvpp2_port*,struct mvpp2_tx_queue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct netdev_queue* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct mvpp2_port *port, struct mvpp2_tx_queue *txq,
			   struct mvpp2_txq_pcpu *txq_pcpu)
{
	struct netdev_queue *nq = FUNC4(port->dev, txq->log_id);
	int tx_done;

	if (txq_pcpu->thread != FUNC0(port->priv, FUNC7()))
		FUNC3(port->dev, "wrong cpu on the end of Tx processing\n");

	tx_done = FUNC2(port, txq);
	if (!tx_done)
		return;
	FUNC1(port, txq, txq_pcpu, tx_done);

	txq_pcpu->count -= tx_done;

	if (FUNC5(nq))
		if (txq_pcpu->count <= txq_pcpu->wake_threshold)
			FUNC6(nq);
}