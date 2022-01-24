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
struct tg3 {int mac_mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int MAC_MODE_PORT_INT_LPBACK ; 
 int NETIF_F_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct tg3* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tg3*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tg3*,int) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, netdev_features_t features)
{
	struct tg3 *tp = FUNC1(dev);

	if (features & NETIF_F_LOOPBACK) {
		if (tp->mac_mode & MAC_MODE_PORT_INT_LPBACK)
			return;

		FUNC3(&tp->lock);
		FUNC5(tp, true);
		FUNC2(tp->dev);
		FUNC4(&tp->lock);
		FUNC0(dev, "Internal MAC loopback mode enabled.\n");
	} else {
		if (!(tp->mac_mode & MAC_MODE_PORT_INT_LPBACK))
			return;

		FUNC3(&tp->lock);
		FUNC5(tp, false);
		/* Force link status check */
		FUNC6(tp, true);
		FUNC4(&tp->lock);
		FUNC0(dev, "Internal MAC loopback mode disabled.\n");
	}
}