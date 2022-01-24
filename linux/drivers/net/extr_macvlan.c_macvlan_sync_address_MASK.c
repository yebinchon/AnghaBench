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
struct net_device {int flags; unsigned char* dev_addr; } ;
struct macvlan_port {unsigned char* perm_addr; } ;
struct macvlan_dev {struct macvlan_port* port; struct net_device* lowerdev; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int IFF_UP ; 
 int FUNC0 (struct net_device*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC3 (struct macvlan_port*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (struct macvlan_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct macvlan_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct macvlan_dev*,unsigned char*) ; 
 scalar_t__ FUNC7 (struct macvlan_port*) ; 
 struct macvlan_dev* FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, unsigned char *addr)
{
	struct macvlan_dev *vlan = FUNC8(dev);
	struct net_device *lowerdev = vlan->lowerdev;
	struct macvlan_port *port = vlan->port;
	int err;

	if (!(dev->flags & IFF_UP)) {
		/* Just copy in the new address */
		FUNC2(dev->dev_addr, addr);
	} else {
		/* Rehash and update the device filters */
		if (FUNC3(vlan->port, addr))
			return -EADDRINUSE;

		if (!FUNC7(port)) {
			err = FUNC0(lowerdev, addr);
			if (err)
				return err;

			FUNC1(lowerdev, dev->dev_addr);
		}

		FUNC6(vlan, addr);
	}
	if (FUNC7(port) && !FUNC4(port)) {
		/* Since addr_change isn't set, we are here due to lower
		 * device change.  Save the lower-dev address so we can
		 * restore it later.
		 */
		FUNC2(vlan->port->perm_addr,
				lowerdev->dev_addr);
	}
	FUNC5(port);
	return 0;
}