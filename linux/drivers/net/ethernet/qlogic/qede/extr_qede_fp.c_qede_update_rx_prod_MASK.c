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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct qede_rx_queue {int /*<<< orphan*/  hw_rxq_prod_addr; int /*<<< orphan*/  rx_comp_ring; int /*<<< orphan*/  rx_bd_ring; } ;
struct qede_dev {int dummy; } ;
struct eth_rx_prod_data {void* cqe_prod; void* bd_prod; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  rx_prods ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct qede_dev *edev, struct qede_rx_queue *rxq)
{
	u16 bd_prod = FUNC2(&rxq->rx_bd_ring);
	u16 cqe_prod = FUNC2(&rxq->rx_comp_ring);
	struct eth_rx_prod_data rx_prods = {0};

	/* Update producers */
	rx_prods.bd_prod = FUNC0(bd_prod);
	rx_prods.cqe_prod = FUNC0(cqe_prod);

	/* Make sure that the BD and SGE data is updated before updating the
	 * producers since FW might read the BD/SGE right after the producer
	 * is updated.
	 */
	FUNC3();

	FUNC1(rxq->hw_rxq_prod_addr, sizeof(rx_prods),
			(u32 *)&rx_prods);
}