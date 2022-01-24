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
struct ice_vsi {TYPE_1__* netdev; } ;
struct TYPE_2__ {int features; } ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int FUNC0 (struct ice_vsi*) ; 
 int FUNC1 (struct ice_vsi*,int) ; 

__attribute__((used)) static int FUNC2(struct ice_vsi *vsi)
{
	int ret = 0;

	if (vsi->netdev->features & NETIF_F_HW_VLAN_CTAG_RX)
		ret = FUNC1(vsi, true);
	if (vsi->netdev->features & NETIF_F_HW_VLAN_CTAG_TX)
		ret = FUNC0(vsi);

	return ret;
}