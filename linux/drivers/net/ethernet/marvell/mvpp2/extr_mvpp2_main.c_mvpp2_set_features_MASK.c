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
struct net_device {int features; } ;
struct mvpp2_port {int dummy; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_RXHASH ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_port*) ; 
 struct mvpp2_port* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			      netdev_features_t features)
{
	netdev_features_t changed = dev->features ^ features;
	struct mvpp2_port *port = FUNC5(dev);

	if (changed & NETIF_F_HW_VLAN_CTAG_FILTER) {
		if (features & NETIF_F_HW_VLAN_CTAG_FILTER) {
			FUNC3(port);
		} else {
			/* Invalidate all registered VID filters for this
			 * port
			 */
			FUNC4(port);

			FUNC2(port);
		}
	}

	if (changed & NETIF_F_RXHASH) {
		if (features & NETIF_F_RXHASH)
			FUNC1(port);
		else
			FUNC0(port);
	}

	return 0;
}