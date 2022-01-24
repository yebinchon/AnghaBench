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
struct virt_wifi_netdev_priv {int /*<<< orphan*/  connect_requested_bss; int /*<<< orphan*/  upperdev; int /*<<< orphan*/  connect; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WLAN_STATUS_UNSPECIFIED_FAILURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct virt_wifi_netdev_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev)
{
	struct virt_wifi_netdev_priv *priv = FUNC2(netdev);

	/* If there is work pending, clean up dangling callbacks. */
	if (FUNC0(&priv->connect)) {
		/* Schedules an event that acquires the rtnl lock. */
		FUNC1(priv->upperdev,
					priv->connect_requested_bss, NULL, 0,
					NULL, 0,
					WLAN_STATUS_UNSPECIFIED_FAILURE,
					GFP_KERNEL);
	}
}