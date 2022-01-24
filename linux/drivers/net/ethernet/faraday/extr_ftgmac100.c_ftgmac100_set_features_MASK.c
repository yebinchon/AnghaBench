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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int features; } ;
struct ftgmac100 {scalar_t__ base; TYPE_1__* netdev; } ;
typedef  int netdev_features_t ;
struct TYPE_2__ {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTGMAC100_MACCR_RM_VLAN ; 
 scalar_t__ FTGMAC100_OFFSET_MACCR ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ftgmac100* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev,
				  netdev_features_t features)
{
	struct ftgmac100 *priv = FUNC2(netdev);
	netdev_features_t changed = netdev->features ^ features;

	if (!FUNC3(netdev))
		return 0;

	/* Update the vlan filtering bit */
	if (changed & NETIF_F_HW_VLAN_CTAG_RX) {
		u32 maccr;

		maccr = FUNC0(priv->base + FTGMAC100_OFFSET_MACCR);
		if (priv->netdev->features & NETIF_F_HW_VLAN_CTAG_RX)
			maccr |= FTGMAC100_MACCR_RM_VLAN;
		else
			maccr &= ~FTGMAC100_MACCR_RM_VLAN;
		FUNC1(maccr, priv->base + FTGMAC100_OFFSET_MACCR);
	}

	return 0;
}