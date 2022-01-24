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
struct net_device {int addr_assign_type; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;
struct alx_hw {int /*<<< orphan*/  mac_addr; } ;
struct alx_priv {struct alx_hw hw; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int NET_ADDR_RANDOM ; 
 int /*<<< orphan*/  FUNC0 (struct alx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct alx_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, void *data)
{
	struct alx_priv *alx = FUNC3(netdev);
	struct alx_hw *hw = &alx->hw;
	struct sockaddr *addr = data;

	if (!FUNC1(addr->sa_data))
		return -EADDRNOTAVAIL;

	if (netdev->addr_assign_type & NET_ADDR_RANDOM)
		netdev->addr_assign_type ^= NET_ADDR_RANDOM;

	FUNC2(netdev->dev_addr, addr->sa_data, netdev->addr_len);
	FUNC2(hw->mac_addr, addr->sa_data, netdev->addr_len);
	FUNC0(hw, hw->mac_addr);

	return 0;
}