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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int) ; 
 int FUNC1 (struct net_device*,int) ; 
 int FUNC2 (struct net_device*,int) ; 

int FUNC3(struct net_device *netdev,
			      int tx_queues, int rx_queues)
{
	int err = 0;

	err = FUNC2(netdev, tx_queues);
	if (err) {
		FUNC0(netdev,
			   "Failed to set no of Tx queues: %d\n", tx_queues);
		return err;
	}

	err = FUNC1(netdev, rx_queues);
	if (err)
		FUNC0(netdev,
			   "Failed to set no of Rx queues: %d\n", rx_queues);
	return err;
}