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
struct e1000_ring {int dummy; } ;
struct e1000_adapter {int /*<<< orphan*/  (* alloc_rx_buf ) (struct e1000_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_1__* netdev; struct e1000_ring* rx_ring; } ;
struct TYPE_2__ {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NETIF_F_RXHASH ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct e1000_adapter *adapter)
{
	struct e1000_ring *rx_ring = adapter->rx_ring;

	FUNC6(adapter->netdev);

	FUNC4(adapter);
	FUNC3(adapter);

	FUNC1(adapter);

	if (adapter->netdev->features & NETIF_F_RXHASH)
		FUNC7(adapter);
	FUNC5(adapter);
	FUNC0(adapter);
	adapter->alloc_rx_buf(rx_ring, FUNC2(rx_ring), GFP_KERNEL);
}