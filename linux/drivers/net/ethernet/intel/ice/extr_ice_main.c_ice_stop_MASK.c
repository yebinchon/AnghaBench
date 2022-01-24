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
struct net_device {int dummy; } ;
struct ice_vsi {int dummy; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ice_vsi*) ; 
 struct ice_netdev_priv* FUNC1 (struct net_device*) ; 

int FUNC2(struct net_device *netdev)
{
	struct ice_netdev_priv *np = FUNC1(netdev);
	struct ice_vsi *vsi = np->vsi;

	FUNC0(vsi);

	return 0;
}