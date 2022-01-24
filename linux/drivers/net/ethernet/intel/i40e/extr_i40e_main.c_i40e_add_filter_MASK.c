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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct i40e_vsi {int has_vlan_filter; TYPE_1__* back; int /*<<< orphan*/  flags; int /*<<< orphan*/  mac_filter_hash; } ;
struct i40e_mac_filter {scalar_t__ state; int /*<<< orphan*/  hlist; scalar_t__ vlan; int /*<<< orphan*/  macaddr; } ;
typedef  scalar_t__ s16 ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ I40E_FILTER_ACTIVE ; 
 scalar_t__ I40E_FILTER_NEW ; 
 scalar_t__ I40E_FILTER_REMOVE ; 
 int /*<<< orphan*/  I40E_VSI_FLAG_FILTER_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __I40E_MACVLAN_SYNC_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 struct i40e_mac_filter* FUNC4 (struct i40e_vsi*,int /*<<< orphan*/  const*,scalar_t__) ; 
 struct i40e_mac_filter* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct i40e_mac_filter *FUNC7(struct i40e_vsi *vsi,
					const u8 *macaddr, s16 vlan)
{
	struct i40e_mac_filter *f;
	u64 key;

	if (!vsi || !macaddr)
		return NULL;

	f = FUNC4(vsi, macaddr, vlan);
	if (!f) {
		f = FUNC5(sizeof(*f), GFP_ATOMIC);
		if (!f)
			return NULL;

		/* Update the boolean indicating if we need to function in
		 * VLAN mode.
		 */
		if (vlan >= 0)
			vsi->has_vlan_filter = true;

		FUNC1(f->macaddr, macaddr);
		f->vlan = vlan;
		f->state = I40E_FILTER_NEW;
		FUNC0(&f->hlist);

		key = FUNC3(macaddr);
		FUNC2(vsi->mac_filter_hash, &f->hlist, key);

		vsi->flags |= I40E_VSI_FLAG_FILTER_CHANGED;
		FUNC6(__I40E_MACVLAN_SYNC_PENDING, vsi->back->state);
	}

	/* If we're asked to add a filter that has been marked for removal, it
	 * is safe to simply restore it to active state. __i40e_del_filter
	 * will have simply deleted any filters which were previously marked
	 * NEW or FAILED, so if it is currently marked REMOVE it must have
	 * previously been ACTIVE. Since we haven't yet run the sync filters
	 * task, just restore this filter to the ACTIVE state so that the
	 * sync task leaves it in place
	 */
	if (f->state == I40E_FILTER_REMOVE)
		f->state = I40E_FILTER_ACTIVE;

	return f;
}