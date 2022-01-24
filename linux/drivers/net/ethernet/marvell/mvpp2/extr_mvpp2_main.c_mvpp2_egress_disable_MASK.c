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
struct mvpp2_port {int /*<<< orphan*/  priv; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MVPP2_TXP_SCHED_DISQ_OFFSET ; 
 int MVPP2_TXP_SCHED_ENQ_MASK ; 
 int /*<<< orphan*/  MVPP2_TXP_SCHED_PORT_INDEX_REG ; 
 int /*<<< orphan*/  MVPP2_TXP_SCHED_Q_CMD_REG ; 
 int MVPP2_TX_DISABLE_TIMEOUT_MSEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mvpp2_port*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC5(struct mvpp2_port *port)
{
	u32 reg_data;
	int delay;
	int tx_port_num = FUNC1(port);

	/* Issue stop command for active channels only */
	FUNC3(port->priv, MVPP2_TXP_SCHED_PORT_INDEX_REG, tx_port_num);
	reg_data = (FUNC2(port->priv, MVPP2_TXP_SCHED_Q_CMD_REG)) &
		    MVPP2_TXP_SCHED_ENQ_MASK;
	if (reg_data != 0)
		FUNC3(port->priv, MVPP2_TXP_SCHED_Q_CMD_REG,
			    (reg_data << MVPP2_TXP_SCHED_DISQ_OFFSET));

	/* Wait for all Tx activity to terminate. */
	delay = 0;
	do {
		if (delay >= MVPP2_TX_DISABLE_TIMEOUT_MSEC) {
			FUNC4(port->dev,
				    "Tx stop timed out, status=0x%08x\n",
				    reg_data);
			break;
		}
		FUNC0(1);
		delay++;

		/* Check port TX Command register that all
		 * Tx queues are stopped
		 */
		reg_data = FUNC2(port->priv, MVPP2_TXP_SCHED_Q_CMD_REG);
	} while (reg_data & MVPP2_TXP_SCHED_ENQ_MASK);
}