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
struct TYPE_2__ {scalar_t__ pvid; } ;
struct i40e_vsi {int /*<<< orphan*/  mac_filter_hash_lock; TYPE_1__ info; } ;

/* Variables and functions */
 int FUNC0 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct i40e_vsi *vsi)
{
	bool have_vlans;

	/* If we have a port VLAN, then the VSI cannot have any VLANs
	 * configured, as all MAC/VLAN filters will be assigned to the PVID.
	 */
	if (vsi->info.pvid)
		return false;

	/* Since we don't have a PVID, we know that if the device is in VLAN
	 * mode it must be because of a VLAN filter configured on this VSI.
	 */
	FUNC1(&vsi->mac_filter_hash_lock);
	have_vlans = FUNC0(vsi);
	FUNC2(&vsi->mac_filter_hash_lock);

	return have_vlans;
}