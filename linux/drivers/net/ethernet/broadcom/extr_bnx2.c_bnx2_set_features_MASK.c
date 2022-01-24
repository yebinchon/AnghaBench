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
struct net_device {int vlan_features; int hw_features; int features; } ;
struct bnx2 {int rx_mode; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_DRV_MSG_CODE_KEEP_VLAN_UPDATE ; 
 int BNX2_EMAC_RX_MODE_KEEP_VLAN_TAG ; 
 int NETIF_F_ALL_TSO ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct bnx2* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int
FUNC6(struct net_device *dev, netdev_features_t features)
{
	struct bnx2 *bp = FUNC4(dev);

	/* TSO with VLAN tag won't work with current firmware */
	if (features & NETIF_F_HW_VLAN_CTAG_TX)
		dev->vlan_features |= (dev->hw_features & NETIF_F_ALL_TSO);
	else
		dev->vlan_features &= ~NETIF_F_ALL_TSO;

	if ((!!(features & NETIF_F_HW_VLAN_CTAG_RX) !=
	    !!(bp->rx_mode & BNX2_EMAC_RX_MODE_KEEP_VLAN_TAG)) &&
	    FUNC5(dev)) {
		FUNC2(bp, false);
		dev->features = features;
		FUNC3(dev);
		FUNC0(bp, BNX2_DRV_MSG_CODE_KEEP_VLAN_UPDATE, 0, 1);
		FUNC1(bp, false);
		return 1;
	}

	return 0;
}