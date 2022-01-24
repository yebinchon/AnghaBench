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
struct net_device {int dummy; } ;
struct i40e_vsi {scalar_t__ current_netdev_flags; TYPE_2__* back; int /*<<< orphan*/  flags; TYPE_1__* netdev; int /*<<< orphan*/  mac_filter_hash_lock; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct TYPE_3__ {scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_VSI_FLAG_FILTER_CHANGED ; 
 int /*<<< orphan*/  __I40E_MACVLAN_SYNC_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i40e_addr_sync ; 
 int /*<<< orphan*/  i40e_addr_unsync ; 
 struct i40e_netdev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *netdev)
{
	struct i40e_netdev_priv *np = FUNC2(netdev);
	struct i40e_vsi *vsi = np->vsi;

	FUNC4(&vsi->mac_filter_hash_lock);

	FUNC1(netdev, i40e_addr_sync, i40e_addr_unsync);
	FUNC0(netdev, i40e_addr_sync, i40e_addr_unsync);

	FUNC5(&vsi->mac_filter_hash_lock);

	/* check for other flag changes */
	if (vsi->current_netdev_flags != vsi->netdev->flags) {
		vsi->flags |= I40E_VSI_FLAG_FILTER_CHANGED;
		FUNC3(__I40E_MACVLAN_SYNC_PENDING, vsi->back->state);
	}
}