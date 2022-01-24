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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct macvlan_dev {scalar_t__ mode; int /*<<< orphan*/  port; int /*<<< orphan*/  lowerdev; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EADDRNOTAVAIL ; 
 scalar_t__ MACVLAN_MODE_PASSTHRU ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct macvlan_dev* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, void *p)
{
	struct macvlan_dev *vlan = FUNC6(dev);
	struct sockaddr *addr = p;

	if (!FUNC2(addr->sa_data))
		return -EADDRNOTAVAIL;

	/* If the addresses are the same, this is a no-op */
	if (FUNC1(dev->dev_addr, addr->sa_data))
		return 0;

	if (vlan->mode == MACVLAN_MODE_PASSTHRU) {
		FUNC4(vlan->port);
		return FUNC0(vlan->lowerdev, addr, NULL);
	}

	if (FUNC3(vlan->port, addr->sa_data))
		return -EADDRINUSE;

	return FUNC5(dev, addr->sa_data);
}