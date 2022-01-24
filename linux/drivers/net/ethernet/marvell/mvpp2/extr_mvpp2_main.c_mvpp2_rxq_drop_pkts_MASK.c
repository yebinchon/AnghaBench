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
struct mvpp2_rx_queue {int /*<<< orphan*/  id; } ;
struct mvpp2_rx_desc {int dummy; } ;
struct mvpp2_port {int dummy; } ;

/* Variables and functions */
 int MVPP2_RXD_BM_POOL_ID_MASK ; 
 int MVPP2_RXD_BM_POOL_ID_OFFS ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_port*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_port*,struct mvpp2_rx_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_port*,struct mvpp2_rx_desc*) ; 
 int FUNC3 (struct mvpp2_port*,struct mvpp2_rx_desc*) ; 
 struct mvpp2_rx_desc* FUNC4 (struct mvpp2_rx_queue*) ; 
 int FUNC5 (struct mvpp2_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mvpp2_port*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(struct mvpp2_port *port,
				struct mvpp2_rx_queue *rxq)
{
	int rx_received, i;

	rx_received = FUNC5(port, rxq->id);
	if (!rx_received)
		return;

	for (i = 0; i < rx_received; i++) {
		struct mvpp2_rx_desc *rx_desc = FUNC4(rxq);
		u32 status = FUNC3(port, rx_desc);
		int pool;

		pool = (status & MVPP2_RXD_BM_POOL_ID_MASK) >>
			MVPP2_RXD_BM_POOL_ID_OFFS;

		FUNC0(port, pool,
				  FUNC2(port, rx_desc),
				  FUNC1(port, rx_desc));
	}
	FUNC6(port, rxq->id, rx_received, rx_received);
}