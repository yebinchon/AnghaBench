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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {scalar_t__ pvid; } ;
struct i40e_vsi {int /*<<< orphan*/  back; int /*<<< orphan*/  mac_filter_hash_lock; TYPE_1__ info; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct i40e_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct i40e_vsi *vsi, u16 vid)
{
	int err;

	if (vsi->info.pvid)
		return -EINVAL;

	/* The network stack will attempt to add VID=0, with the intention to
	 * receive priority tagged packets with a VLAN of 0. Our HW receives
	 * these packets by default when configured to receive untagged
	 * packets, so we don't need to add a filter for this case.
	 * Additionally, HW interprets adding a VID=0 filter as meaning to
	 * receive *only* tagged traffic and stops receiving untagged traffic.
	 * Thus, we do not want to actually add a filter for VID=0
	 */
	if (!vid)
		return 0;

	/* Locked once because all functions invoked below iterates list*/
	FUNC2(&vsi->mac_filter_hash_lock);
	err = FUNC0(vsi, vid);
	FUNC3(&vsi->mac_filter_hash_lock);
	if (err)
		return err;

	/* schedule our worker thread which will take care of
	 * applying the new filter changes
	 */
	FUNC1(vsi->back);
	return 0;
}