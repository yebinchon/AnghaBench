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
struct net_device {int watchdog_timeo; } ;
struct fm10k_ring {int dummy; } ;
struct fm10k_intfc {int num_tx_queues; struct fm10k_ring** tx_ring; } ;

/* Variables and functions */
 int HZ ; 
 int TX_TIMEO_LIMIT ; 
 scalar_t__ FUNC0 (struct fm10k_ring*) ; 
 int /*<<< orphan*/  drv ; 
 scalar_t__ FUNC1 (struct fm10k_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*) ; 
 struct fm10k_intfc* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_intfc*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev)
{
	struct fm10k_intfc *interface = FUNC3(netdev);
	bool real_tx_hang = false;
	int i;

#define TX_TIMEO_LIMIT 16000
	for (i = 0; i < interface->num_tx_queues; i++) {
		struct fm10k_ring *tx_ring = interface->tx_ring[i];

		if (FUNC0(tx_ring) && FUNC1(tx_ring))
			real_tx_hang = true;
	}

	if (real_tx_hang) {
		FUNC2(interface);
	} else {
		FUNC4(interface, drv, netdev,
			   "Fake Tx hang detected with timeout of %d seconds\n",
			   netdev->watchdog_timeo / HZ);

		/* fake Tx hang - increase the kernel timeout */
		if (netdev->watchdog_timeo < TX_TIMEO_LIMIT)
			netdev->watchdog_timeo *= 2;
	}
}