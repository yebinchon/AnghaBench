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
struct mvneta_port {int dummy; } ;

/* Variables and functions */
 int MVNETA_TXQ_TOKEN_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MVNETA_TX_MTU ; 
 int MVNETA_TX_MTU_MAX ; 
 int /*<<< orphan*/  MVNETA_TX_TOKEN_SIZE ; 
 int MVNETA_TX_TOKEN_SIZE_MAX ; 
 int FUNC1 (struct mvneta_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mvneta_port*,int /*<<< orphan*/ ,int) ; 
 int txq_number ; 

__attribute__((used)) static void FUNC3(struct mvneta_port *pp, int max_tx_size)

{
	u32 val, size, mtu;
	int queue;

	mtu = max_tx_size * 8;
	if (mtu > MVNETA_TX_MTU_MAX)
		mtu = MVNETA_TX_MTU_MAX;

	/* Set MTU */
	val = FUNC1(pp, MVNETA_TX_MTU);
	val &= ~MVNETA_TX_MTU_MAX;
	val |= mtu;
	FUNC2(pp, MVNETA_TX_MTU, val);

	/* TX token size and all TXQs token size must be larger that MTU */
	val = FUNC1(pp, MVNETA_TX_TOKEN_SIZE);

	size = val & MVNETA_TX_TOKEN_SIZE_MAX;
	if (size < mtu) {
		size = mtu;
		val &= ~MVNETA_TX_TOKEN_SIZE_MAX;
		val |= size;
		FUNC2(pp, MVNETA_TX_TOKEN_SIZE, val);
	}
	for (queue = 0; queue < txq_number; queue++) {
		val = FUNC1(pp, FUNC0(queue));

		size = val & MVNETA_TXQ_TOKEN_SIZE_MAX;
		if (size < mtu) {
			size = mtu;
			val &= ~MVNETA_TXQ_TOKEN_SIZE_MAX;
			val |= size;
			FUNC2(pp, FUNC0(queue), val);
		}
	}
}