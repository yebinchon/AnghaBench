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
struct mvpp2_tx_queue {int done_pkts_coal; int id; } ;
struct mvpp2_port {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVPP2_TXQ_NUM_REG ; 
 int MVPP2_TXQ_THRESH_MASK ; 
 int MVPP2_TXQ_THRESH_OFFSET ; 
 int /*<<< orphan*/  MVPP2_TXQ_THRESH_REG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct mvpp2_port *port,
				   struct mvpp2_tx_queue *txq)
{
	unsigned int thread = FUNC1(port->priv, FUNC0());
	u32 val;

	if (txq->done_pkts_coal > MVPP2_TXQ_THRESH_MASK)
		txq->done_pkts_coal = MVPP2_TXQ_THRESH_MASK;

	val = (txq->done_pkts_coal << MVPP2_TXQ_THRESH_OFFSET);
	FUNC2(port->priv, thread, MVPP2_TXQ_NUM_REG, txq->id);
	FUNC2(port->priv, thread, MVPP2_TXQ_THRESH_REG, val);

	FUNC3();
}