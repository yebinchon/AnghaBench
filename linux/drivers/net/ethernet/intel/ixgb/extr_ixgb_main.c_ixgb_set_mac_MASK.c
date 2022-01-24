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
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct ixgb_adapter {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ixgb_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int
FUNC4(struct net_device *netdev, void *p)
{
	struct ixgb_adapter *adapter = FUNC3(netdev);
	struct sockaddr *addr = p;

	if (!FUNC0(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC2(netdev->dev_addr, addr->sa_data, netdev->addr_len);

	FUNC1(&adapter->hw, addr->sa_data, 0);

	return 0;
}