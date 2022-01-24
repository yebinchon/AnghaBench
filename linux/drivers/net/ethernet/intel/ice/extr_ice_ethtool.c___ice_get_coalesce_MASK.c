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
struct ethtool_coalesce {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ice_vsi*,struct ethtool_coalesce*,int) ; 
 struct ice_netdev_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *netdev, struct ethtool_coalesce *ec,
		   int q_num)
{
	struct ice_netdev_priv *np = FUNC1(netdev);
	struct ice_vsi *vsi = np->vsi;

	if (q_num < 0)
		q_num = 0;

	if (FUNC0(vsi, ec, q_num))
		return -EINVAL;

	return 0;
}