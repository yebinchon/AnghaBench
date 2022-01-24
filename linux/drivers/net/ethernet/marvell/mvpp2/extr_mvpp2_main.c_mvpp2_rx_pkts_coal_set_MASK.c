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
struct mvpp2_rx_queue {scalar_t__ pkts_coal; scalar_t__ id; } ;
struct mvpp2_port {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 scalar_t__ MVPP2_OCCUPIED_THRESH_MASK ; 
 int /*<<< orphan*/  MVPP2_RXQ_NUM_REG ; 
 int /*<<< orphan*/  MVPP2_RXQ_THRESH_REG ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct mvpp2_port *port,
				   struct mvpp2_rx_queue *rxq)
{
	unsigned int thread = FUNC1(port->priv, FUNC0());

	if (rxq->pkts_coal > MVPP2_OCCUPIED_THRESH_MASK)
		rxq->pkts_coal = MVPP2_OCCUPIED_THRESH_MASK;

	FUNC2(port->priv, thread, MVPP2_RXQ_NUM_REG, rxq->id);
	FUNC2(port->priv, thread, MVPP2_RXQ_THRESH_REG,
			   rxq->pkts_coal);

	FUNC3();
}