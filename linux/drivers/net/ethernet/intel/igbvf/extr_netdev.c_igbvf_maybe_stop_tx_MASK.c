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
struct igbvf_adapter {int /*<<< orphan*/  restart_queue; int /*<<< orphan*/  tx_ring; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct igbvf_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, int size)
{
	struct igbvf_adapter *adapter = FUNC1(netdev);

	/* there is enough descriptors then we don't need to worry  */
	if (FUNC0(adapter->tx_ring) >= size)
		return 0;

	FUNC2(netdev);

	/* Herbert's original patch had:
	 *  smp_mb__after_netif_stop_queue();
	 * but since that doesn't exist yet, just open code it.
	 */
	FUNC4();

	/* We need to check again just in case room has been made available */
	if (FUNC0(adapter->tx_ring) < size)
		return -EBUSY;

	FUNC3(netdev);

	++adapter->restart_queue;
	return 0;
}