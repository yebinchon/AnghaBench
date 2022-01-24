#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct atl1e_rx_ring {int /*<<< orphan*/ * desc; scalar_t__ real_page_size; scalar_t__ page_size; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_lock; } ;
struct TYPE_3__ {scalar_t__ max_frame_size; } ;
struct atl1e_adapter {TYPE_2__ tx_ring; struct atl1e_rx_ring rx_ring; int /*<<< orphan*/ * ring_vir_addr; int /*<<< orphan*/  ring_size; TYPE_1__ hw; } ;

/* Variables and functions */
 scalar_t__ ETH_FCS_LEN ; 
 scalar_t__ ETH_HLEN ; 
 scalar_t__ VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct atl1e_adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct atl1e_adapter *adapter)
{
	struct atl1e_rx_ring *rx_ring = NULL;

	rx_ring = &adapter->rx_ring;

	rx_ring->real_page_size = adapter->rx_ring.page_size
				 + adapter->hw.max_frame_size
				 + ETH_HLEN + VLAN_HLEN
				 + ETH_FCS_LEN;
	rx_ring->real_page_size = FUNC1(rx_ring->real_page_size, 32);
	FUNC0(adapter, &adapter->ring_size);

	adapter->ring_vir_addr = NULL;
	adapter->rx_ring.desc = NULL;
	FUNC2(&adapter->tx_ring.tx_lock);
}