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
struct mvpp2_tx_queue {int dummy; } ;
struct mvpp2_port {int ntxqs; struct mvpp2_tx_queue** txqs; scalar_t__ has_tx_irqs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_port*,struct mvpp2_tx_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*) ; 
 int FUNC4 (struct mvpp2_port*,struct mvpp2_tx_queue*) ; 
 int /*<<< orphan*/  mvpp2_txq_sent_counter_clear ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct mvpp2_port*,int) ; 

__attribute__((used)) static int FUNC8(struct mvpp2_port *port)
{
	struct mvpp2_tx_queue *txq;
	int queue, err, cpu;

	for (queue = 0; queue < port->ntxqs; queue++) {
		txq = port->txqs[queue];
		err = FUNC4(port, txq);
		if (err)
			goto err_cleanup;

		/* Assign this queue to a CPU */
		cpu = queue % FUNC6();
		FUNC5(port->dev, FUNC0(cpu), queue);
	}

	if (port->has_tx_irqs) {
		FUNC3(port);
		for (queue = 0; queue < port->ntxqs; queue++) {
			txq = port->txqs[queue];
			FUNC2(port, txq);
		}
	}

	FUNC7(mvpp2_txq_sent_counter_clear, port, 1);
	return 0;

err_cleanup:
	FUNC1(port);
	return err;
}