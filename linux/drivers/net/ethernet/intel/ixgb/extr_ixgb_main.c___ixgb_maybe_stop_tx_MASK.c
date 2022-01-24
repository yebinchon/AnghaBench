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
struct net_device {int dummy; } ;
struct ixgb_desc_ring {int dummy; } ;
struct ixgb_adapter {int /*<<< orphan*/  restart_queue; struct ixgb_desc_ring tx_ring; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct ixgb_desc_ring*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct ixgb_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, int size)
{
	struct ixgb_adapter *adapter = FUNC2(netdev);
	struct ixgb_desc_ring *tx_ring = &adapter->tx_ring;

	FUNC4(netdev);
	/* Herbert's original patch had:
	 *  smp_mb__after_netif_stop_queue();
	 * but since that doesn't exist yet, just open code it. */
	FUNC5();

	/* We need to check again in a case another CPU has just
	 * made room available. */
	if (FUNC1(FUNC0(tx_ring) < size))
		return -EBUSY;

	/* A reprieve! */
	FUNC3(netdev);
	++adapter->restart_queue;
	return 0;
}