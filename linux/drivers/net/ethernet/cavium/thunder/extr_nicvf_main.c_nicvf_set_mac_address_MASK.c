#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct nicvf {int set_mac_pending; TYPE_1__* pdev; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {scalar_t__ msix_enabled; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nicvf* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct nicvf*,struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, void *p)
{
	struct sockaddr *addr = p;
	struct nicvf *nic = FUNC2(netdev);

	if (!FUNC0(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC1(netdev->dev_addr, addr->sa_data, netdev->addr_len);

	if (nic->pdev->msix_enabled) {
		if (FUNC3(nic, netdev))
			return -EBUSY;
	} else {
		nic->set_mac_pending = true;
	}

	return 0;
}