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
struct net_device {int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, int new_mtu)
{
	bool running = FUNC3(netdev);
	int err = 0;

	FUNC0();
	if (running) {
		err = FUNC2(netdev);
		if (err)
			return err;
	}

	netdev->mtu = new_mtu;

	if (running) {
		err = FUNC1(netdev);
		if (err)
			return err;
	}

	return 0;
}