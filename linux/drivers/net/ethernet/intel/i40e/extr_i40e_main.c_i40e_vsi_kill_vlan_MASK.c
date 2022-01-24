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
 int /*<<< orphan*/  FUNC0 (struct i40e_vsi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct i40e_vsi *vsi, u16 vid)
{
	if (!vid || vsi->info.pvid)
		return;

	FUNC2(&vsi->mac_filter_hash_lock);
	FUNC0(vsi, vid);
	FUNC3(&vsi->mac_filter_hash_lock);

	/* schedule our worker thread which will take care of
	 * applying the new filter changes
	 */
	FUNC1(vsi->back);
}