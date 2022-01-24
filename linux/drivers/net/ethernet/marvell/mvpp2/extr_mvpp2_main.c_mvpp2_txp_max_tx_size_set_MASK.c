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
struct mvpp2_port {int pkt_size; int ntxqs; int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int MVPP2_TXP_MTU_MAX ; 
 int /*<<< orphan*/  MVPP2_TXP_SCHED_MTU_REG ; 
 int /*<<< orphan*/  MVPP2_TXP_SCHED_PORT_INDEX_REG ; 
 int /*<<< orphan*/  MVPP2_TXP_SCHED_TOKEN_SIZE_REG ; 
 int MVPP2_TXP_TOKEN_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MVPP2_TXQ_TOKEN_SIZE_MAX ; 
 int FUNC1 (struct mvpp2_port*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct mvpp2_port *port)
{
	u32	val, size, mtu;
	int	txq, tx_port_num;

	mtu = port->pkt_size * 8;
	if (mtu > MVPP2_TXP_MTU_MAX)
		mtu = MVPP2_TXP_MTU_MAX;

	/* WA for wrong Token bucket update: Set MTU value = 3*real MTU value */
	mtu = 3 * mtu;

	/* Indirect access to registers */
	tx_port_num = FUNC1(port);
	FUNC3(port->priv, MVPP2_TXP_SCHED_PORT_INDEX_REG, tx_port_num);

	/* Set MTU */
	val = FUNC2(port->priv, MVPP2_TXP_SCHED_MTU_REG);
	val &= ~MVPP2_TXP_MTU_MAX;
	val |= mtu;
	FUNC3(port->priv, MVPP2_TXP_SCHED_MTU_REG, val);

	/* TXP token size and all TXQs token size must be larger that MTU */
	val = FUNC2(port->priv, MVPP2_TXP_SCHED_TOKEN_SIZE_REG);
	size = val & MVPP2_TXP_TOKEN_SIZE_MAX;
	if (size < mtu) {
		size = mtu;
		val &= ~MVPP2_TXP_TOKEN_SIZE_MAX;
		val |= size;
		FUNC3(port->priv, MVPP2_TXP_SCHED_TOKEN_SIZE_REG, val);
	}

	for (txq = 0; txq < port->ntxqs; txq++) {
		val = FUNC2(port->priv,
				 FUNC0(txq));
		size = val & MVPP2_TXQ_TOKEN_SIZE_MAX;

		if (size < mtu) {
			size = mtu;
			val &= ~MVPP2_TXQ_TOKEN_SIZE_MAX;
			val |= size;
			FUNC3(port->priv,
				    FUNC0(txq),
				    val);
		}
	}
}