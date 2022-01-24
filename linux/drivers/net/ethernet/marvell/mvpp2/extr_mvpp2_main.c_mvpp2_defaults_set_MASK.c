#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mvpp2_port {int nrxqs; TYPE_2__* priv; TYPE_1__** rxqs; int /*<<< orphan*/  id; scalar_t__ base; } ;
struct TYPE_5__ {scalar_t__ hw_version; int tclk; } ;
struct TYPE_4__ {int id; } ;

/* Variables and functions */
 scalar_t__ MVPP21 ; 
 scalar_t__ MVPP2_GMAC_PORT_FIFO_CFG_1_REG ; 
 int MVPP2_GMAC_TX_FIFO_MIN_TH_ALL_MASK ; 
 int FUNC0 (int) ; 
 int MVPP2_MAX_TXQ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int MVPP2_RX_USE_PSEUDO_FOR_CSUM_MASK ; 
 int MVPP2_SNOOP_BUF_HDR_MASK ; 
 int MVPP2_SNOOP_PKT_SIZE_MASK ; 
 int MVPP2_TXP_REFILL_PERIOD_ALL_MASK ; 
 int FUNC4 (int) ; 
 int MVPP2_TXP_REFILL_TOKENS_ALL_MASK ; 
 int /*<<< orphan*/  MVPP2_TXP_SCHED_CMD_1_REG ; 
 int /*<<< orphan*/  MVPP2_TXP_SCHED_FIXED_PRIO_REG ; 
 int /*<<< orphan*/  MVPP2_TXP_SCHED_PERIOD_REG ; 
 int /*<<< orphan*/  MVPP2_TXP_SCHED_PORT_INDEX_REG ; 
 int /*<<< orphan*/  MVPP2_TXP_SCHED_REFILL_REG ; 
 int /*<<< orphan*/  MVPP2_TXP_SCHED_TOKEN_SIZE_REG ; 
 int MVPP2_TXP_TOKEN_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int USEC_PER_SEC ; 
 int FUNC6 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct mvpp2_port*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct mvpp2_port *port)
{
	int tx_port_num, val, queue, lrxq;

	if (port->priv->hw_version == MVPP21) {
		/* Update TX FIFO MIN Threshold */
		val = FUNC10(port->base + MVPP2_GMAC_PORT_FIFO_CFG_1_REG);
		val &= ~MVPP2_GMAC_TX_FIFO_MIN_TH_ALL_MASK;
		/* Min. TX threshold must be less than minimal packet length */
		val |= FUNC0(64 - 4 - 2);
		FUNC11(val, port->base + MVPP2_GMAC_PORT_FIFO_CFG_1_REG);
	}

	/* Disable Legacy WRR, Disable EJP, Release from reset */
	tx_port_num = FUNC6(port);
	FUNC9(port->priv, MVPP2_TXP_SCHED_PORT_INDEX_REG,
		    tx_port_num);
	FUNC9(port->priv, MVPP2_TXP_SCHED_CMD_1_REG, 0);

	/* Set TXQ scheduling to Round-Robin */
	FUNC9(port->priv, MVPP2_TXP_SCHED_FIXED_PRIO_REG, 0);

	/* Close bandwidth for all queues */
	for (queue = 0; queue < MVPP2_MAX_TXQ; queue++)
		FUNC9(port->priv,
			    FUNC5(queue), 0);

	/* Set refill period to 1 usec, refill tokens
	 * and bucket size to maximum
	 */
	FUNC9(port->priv, MVPP2_TXP_SCHED_PERIOD_REG,
		    port->priv->tclk / USEC_PER_SEC);
	val = FUNC8(port->priv, MVPP2_TXP_SCHED_REFILL_REG);
	val &= ~MVPP2_TXP_REFILL_PERIOD_ALL_MASK;
	val |= FUNC4(1);
	val |= MVPP2_TXP_REFILL_TOKENS_ALL_MASK;
	FUNC9(port->priv, MVPP2_TXP_SCHED_REFILL_REG, val);
	val = MVPP2_TXP_TOKEN_SIZE_MAX;
	FUNC9(port->priv, MVPP2_TXP_SCHED_TOKEN_SIZE_REG, val);

	/* Set MaximumLowLatencyPacketSize value to 256 */
	FUNC9(port->priv, FUNC2(port->id),
		    MVPP2_RX_USE_PSEUDO_FOR_CSUM_MASK |
		    FUNC3(256));

	/* Enable Rx cache snoop */
	for (lrxq = 0; lrxq < port->nrxqs; lrxq++) {
		queue = port->rxqs[lrxq]->id;
		val = FUNC8(port->priv, FUNC1(queue));
		val |= MVPP2_SNOOP_PKT_SIZE_MASK |
			   MVPP2_SNOOP_BUF_HDR_MASK;
		FUNC9(port->priv, FUNC1(queue), val);
	}

	/* At default, mask all interrupts to all present cpus */
	FUNC7(port);
}