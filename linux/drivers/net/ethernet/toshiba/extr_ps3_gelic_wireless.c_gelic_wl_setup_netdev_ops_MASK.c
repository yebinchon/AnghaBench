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
struct net_device {int /*<<< orphan*/ * wireless_handlers; int /*<<< orphan*/ * wireless_data; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/  watchdog_timeo; } ;
struct gelic_wl_info {int /*<<< orphan*/  wireless_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GELIC_NET_WATCHDOG_TIMEOUT ; 
 int /*<<< orphan*/  gelic_wl_ethtool_ops ; 
 int /*<<< orphan*/  gelic_wl_netdevice_ops ; 
 int /*<<< orphan*/  gelic_wl_wext_handler_def ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct gelic_wl_info* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev)
{
	struct gelic_wl_info *wl;
	wl = FUNC2(FUNC1(netdev));
	FUNC0(!wl);
	netdev->watchdog_timeo = GELIC_NET_WATCHDOG_TIMEOUT;

	netdev->ethtool_ops = &gelic_wl_ethtool_ops;
	netdev->netdev_ops = &gelic_wl_netdevice_ops;
	netdev->wireless_data = &wl->wireless_data;
	netdev->wireless_handlers = &gelic_wl_wext_handler_def;
}