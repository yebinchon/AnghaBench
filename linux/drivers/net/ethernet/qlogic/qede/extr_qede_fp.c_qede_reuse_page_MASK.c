#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sw_rx_data {int /*<<< orphan*/ * data; scalar_t__ page_offset; scalar_t__ mapping; } ;
struct qede_rx_queue {size_t sw_rx_prod; scalar_t__ rx_headroom; struct sw_rx_data* sw_rx_ring; int /*<<< orphan*/  rx_bd_ring; } ;
struct TYPE_2__ {void* lo; void* hi; } ;
struct eth_rx_bd {TYPE_1__ addr; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 size_t NUM_RX_BDS_MAX ; 
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct eth_rx_bd* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(struct qede_rx_queue *rxq,
				   struct sw_rx_data *curr_cons)
{
	struct eth_rx_bd *rx_bd_prod = FUNC2(&rxq->rx_bd_ring);
	struct sw_rx_data *curr_prod;
	dma_addr_t new_mapping;

	curr_prod = &rxq->sw_rx_ring[rxq->sw_rx_prod & NUM_RX_BDS_MAX];
	*curr_prod = *curr_cons;

	new_mapping = curr_prod->mapping + curr_prod->page_offset;

	rx_bd_prod->addr.hi = FUNC0(FUNC3(new_mapping));
	rx_bd_prod->addr.lo = FUNC0(FUNC1(new_mapping) +
					  rxq->rx_headroom);

	rxq->sw_rx_prod++;
	curr_cons->data = NULL;
}