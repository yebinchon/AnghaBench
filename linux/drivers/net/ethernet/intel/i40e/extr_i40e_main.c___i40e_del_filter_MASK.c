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
struct i40e_vsi {TYPE_1__* back; int /*<<< orphan*/  flags; } ;
struct i40e_mac_filter {scalar_t__ state; int /*<<< orphan*/  hlist; } ;
struct TYPE_2__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 scalar_t__ I40E_FILTER_FAILED ; 
 scalar_t__ I40E_FILTER_NEW ; 
 scalar_t__ I40E_FILTER_REMOVE ; 
 int /*<<< orphan*/  I40E_VSI_FLAG_FILTER_CHANGED ; 
 int /*<<< orphan*/  __I40E_MACVLAN_SYNC_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_mac_filter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct i40e_vsi *vsi, struct i40e_mac_filter *f)
{
	if (!f)
		return;

	/* If the filter was never added to firmware then we can just delete it
	 * directly and we don't want to set the status to remove or else an
	 * admin queue command will unnecessarily fire.
	 */
	if ((f->state == I40E_FILTER_FAILED) ||
	    (f->state == I40E_FILTER_NEW)) {
		FUNC0(&f->hlist);
		FUNC1(f);
	} else {
		f->state = I40E_FILTER_REMOVE;
	}

	vsi->flags |= I40E_VSI_FLAG_FILTER_CHANGED;
	FUNC2(__I40E_MACVLAN_SYNC_PENDING, vsi->back->state);
}