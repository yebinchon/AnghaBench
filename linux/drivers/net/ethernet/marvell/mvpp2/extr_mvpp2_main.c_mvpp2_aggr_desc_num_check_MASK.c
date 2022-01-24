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
struct mvpp2_tx_queue {int count; } ;
struct mvpp2_port {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MVPP2_AGGR_TXQ_PENDING_MASK ; 
 int MVPP2_AGGR_TXQ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct mvpp2_port *port,
				     struct mvpp2_tx_queue *aggr_txq, int num)
{
	if ((aggr_txq->count + num) > MVPP2_AGGR_TXQ_SIZE) {
		/* Update number of occupied aggregated Tx descriptors */
		unsigned int thread =
			FUNC1(port->priv, FUNC3());
		u32 val = FUNC2(port->priv,
					     FUNC0(thread));

		aggr_txq->count = val & MVPP2_AGGR_TXQ_PENDING_MASK;

		if ((aggr_txq->count + num) > MVPP2_AGGR_TXQ_SIZE)
			return -ENOMEM;
	}
	return 0;
}