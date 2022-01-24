#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct octeon_device {TYPE_2__* pci_dev; TYPE_3__* props; } ;
struct net_device {int /*<<< orphan*/ * dev_addr; } ;
struct TYPE_4__ {int macaddr_is_admin_asgnd; int /*<<< orphan*/  hw_addr; } ;
struct lio {TYPE_1__ linfo; } ;
struct TYPE_6__ {struct net_device* netdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct lio* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  NETDEV_CHANGEADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct octeon_device *oct, u8 *mac)
{
	bool macaddr_changed = false;
	struct net_device *netdev;
	struct lio *lio;

	FUNC5();

	netdev = oct->props[0].netdev;
	lio = FUNC0(netdev);

	lio->linfo.macaddr_is_admin_asgnd = true;

	if (!FUNC4(netdev->dev_addr, mac)) {
		macaddr_changed = true;
		FUNC3(netdev->dev_addr, mac);
		FUNC3(((u8 *)&lio->linfo.hw_addr) + 2, mac);
		FUNC1(NETDEV_CHANGEADDR, netdev);
	}

	FUNC6();

	if (macaddr_changed)
		FUNC2(&oct->pci_dev->dev,
			 "PF changed VF's MAC address to %pM\n", mac);

	/* no need to notify the firmware of the macaddr change because
	 * the PF did that already
	 */
}