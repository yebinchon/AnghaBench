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
struct ethtool_wolinfo {int wolopts; } ;
struct atl1_adapter {int /*<<< orphan*/  wol; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATLX_WUFC_MAG ; 
 int EOPNOTSUPP ; 
 int WAKE_ARP ; 
 int WAKE_BCAST ; 
 int WAKE_MAGIC ; 
 int WAKE_MAGICSECURE ; 
 int WAKE_MCAST ; 
 int WAKE_PHY ; 
 int WAKE_UCAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct atl1_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *netdev,
	struct ethtool_wolinfo *wol)
{
	struct atl1_adapter *adapter = FUNC1(netdev);

	if (wol->wolopts & (WAKE_PHY | WAKE_UCAST | WAKE_MCAST | WAKE_BCAST |
		WAKE_ARP | WAKE_MAGICSECURE))
		return -EOPNOTSUPP;
	adapter->wol = 0;
	if (wol->wolopts & WAKE_MAGIC)
		adapter->wol |= ATLX_WUFC_MAG;

	FUNC0(&adapter->pdev->dev, adapter->wol);

	return 0;
}