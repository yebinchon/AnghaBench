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
struct net_device {int dummy; } ;
struct ixgbe_adapter {int /*<<< orphan*/  wol; TYPE_1__* pdev; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IXGBE_WUFC_BC ; 
 int /*<<< orphan*/  IXGBE_WUFC_EX ; 
 int /*<<< orphan*/  IXGBE_WUFC_MAG ; 
 int /*<<< orphan*/  IXGBE_WUFC_MC ; 
 int WAKE_ARP ; 
 int WAKE_BCAST ; 
 int WAKE_FILTER ; 
 int WAKE_MAGIC ; 
 int WAKE_MAGICSECURE ; 
 int WAKE_MCAST ; 
 int WAKE_PHY ; 
 int WAKE_UCAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ixgbe_adapter*,struct ethtool_wolinfo*) ; 
 struct ixgbe_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
	struct ixgbe_adapter *adapter = FUNC2(netdev);

	if (wol->wolopts & (WAKE_PHY | WAKE_ARP | WAKE_MAGICSECURE |
			    WAKE_FILTER))
		return -EOPNOTSUPP;

	if (FUNC1(adapter, wol))
		return wol->wolopts ? -EOPNOTSUPP : 0;

	adapter->wol = 0;

	if (wol->wolopts & WAKE_UCAST)
		adapter->wol |= IXGBE_WUFC_EX;
	if (wol->wolopts & WAKE_MCAST)
		adapter->wol |= IXGBE_WUFC_MC;
	if (wol->wolopts & WAKE_BCAST)
		adapter->wol |= IXGBE_WUFC_BC;
	if (wol->wolopts & WAKE_MAGIC)
		adapter->wol |= IXGBE_WUFC_MAG;

	FUNC0(&adapter->pdev->dev, adapter->wol);

	return 0;
}