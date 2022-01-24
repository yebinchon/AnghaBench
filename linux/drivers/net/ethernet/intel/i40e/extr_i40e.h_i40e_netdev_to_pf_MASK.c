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
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int dummy; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;

/* Variables and functions */
 struct i40e_netdev_priv* FUNC0 (struct net_device*) ; 

__attribute__((used)) static inline struct i40e_pf *FUNC1(struct net_device *netdev)
{
	struct i40e_netdev_priv *np = FUNC0(netdev);
	struct i40e_vsi *vsi = np->vsi;

	return vsi->back;
}