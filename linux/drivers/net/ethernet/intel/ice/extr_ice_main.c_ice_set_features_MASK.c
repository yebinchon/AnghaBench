#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int features; } ;
struct ice_vsi {TYPE_2__* back; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
typedef  int netdev_features_t ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int NETIF_F_RXHASH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct ice_vsi*,int,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int FUNC3 (struct ice_vsi*,int) ; 
 int FUNC4 (struct ice_vsi*) ; 
 int FUNC5 (struct ice_vsi*,int) ; 
 struct ice_netdev_priv* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int
FUNC7(struct net_device *netdev, netdev_features_t features)
{
	struct ice_netdev_priv *np = FUNC6(netdev);
	struct ice_vsi *vsi = np->vsi;
	int ret = 0;

	/* Don't set any netdev advanced features with device in Safe Mode */
	if (FUNC2(vsi->back)) {
		FUNC0(&vsi->back->pdev->dev,
			"Device is in Safe Mode - not enabling advanced netdev features\n");
		return ret;
	}

	/* Multiple features can be changed in one call so keep features in
	 * separate if/else statements to guarantee each feature is checked
	 */
	if (features & NETIF_F_RXHASH && !(netdev->features & NETIF_F_RXHASH))
		ret = FUNC3(vsi, true);
	else if (!(features & NETIF_F_RXHASH) &&
		 netdev->features & NETIF_F_RXHASH)
		ret = FUNC3(vsi, false);

	if ((features & NETIF_F_HW_VLAN_CTAG_RX) &&
	    !(netdev->features & NETIF_F_HW_VLAN_CTAG_RX))
		ret = FUNC5(vsi, true);
	else if (!(features & NETIF_F_HW_VLAN_CTAG_RX) &&
		 (netdev->features & NETIF_F_HW_VLAN_CTAG_RX))
		ret = FUNC5(vsi, false);

	if ((features & NETIF_F_HW_VLAN_CTAG_TX) &&
	    !(netdev->features & NETIF_F_HW_VLAN_CTAG_TX))
		ret = FUNC4(vsi);
	else if (!(features & NETIF_F_HW_VLAN_CTAG_TX) &&
		 (netdev->features & NETIF_F_HW_VLAN_CTAG_TX))
		ret = FUNC4(vsi);

	if ((features & NETIF_F_HW_VLAN_CTAG_FILTER) &&
	    !(netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER))
		ret = FUNC1(vsi, true, false);
	else if (!(features & NETIF_F_HW_VLAN_CTAG_FILTER) &&
		 (netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER))
		ret = FUNC1(vsi, false, false);

	return ret;
}