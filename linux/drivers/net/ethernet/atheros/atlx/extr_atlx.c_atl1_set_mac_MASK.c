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
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac_addr; } ;
struct atlx_adapter {TYPE_1__ hw; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atlx_adapter* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, void *p)
{
	struct atlx_adapter *adapter = FUNC3(netdev);
	struct sockaddr *addr = p;

	if (FUNC4(netdev))
		return -EBUSY;

	if (!FUNC1(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC2(netdev->dev_addr, addr->sa_data, netdev->addr_len);
	FUNC2(adapter->hw.mac_addr, addr->sa_data, netdev->addr_len);

	FUNC0(&adapter->hw);
	return 0;
}