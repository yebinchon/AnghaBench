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
struct ice_vsi {scalar_t__ type; int /*<<< orphan*/ * netdev; int /*<<< orphan*/  state; int /*<<< orphan*/  idx; int /*<<< orphan*/  port_info; scalar_t__ num_q_vectors; int /*<<< orphan*/  base_vector; struct ice_pf* back; } ;
struct ice_pf {int /*<<< orphan*/  state; int /*<<< orphan*/  hw; int /*<<< orphan*/  flags; int /*<<< orphan*/  num_avail_sw_msix; int /*<<< orphan*/  irq_tracker; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ICE_FLAG_FW_LLDP_AGENT ; 
 int /*<<< orphan*/  ICE_FLAG_RSS_ENA ; 
 scalar_t__ ICE_VSI_LB ; 
 scalar_t__ ICE_VSI_PF ; 
 scalar_t__ ICE_VSI_VF ; 
 int /*<<< orphan*/  __ICE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_vsi*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC8 (struct ice_vsi*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC10 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC11 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC12 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC13 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC14 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC15 (struct ice_vsi*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(struct ice_vsi *vsi)
{
	struct ice_pf *pf;

	if (!vsi->back)
		return -ENODEV;
	pf = vsi->back;

	/* do not unregister while driver is in the reset recovery pending
	 * state. Since reset/rebuild happens through PF service task workqueue,
	 * it's not a good idea to unregister netdev that is associated to the
	 * PF that is running the work queue items currently. This is done to
	 * avoid check_flush_dependency() warning on this wq
	 */
	if (vsi->netdev && !FUNC3(pf->state))
		FUNC17(vsi->netdev);

	if (FUNC16(ICE_FLAG_RSS_ENA, pf->flags))
		FUNC7(vsi);

	/* Disable VSI and free resources */
	if (vsi->type != ICE_VSI_LB)
		FUNC13(vsi);
	FUNC11(vsi);

	/* SR-IOV determines needed MSIX resources all at once instead of per
	 * VSI since when VFs are spawned we know how many VFs there are and how
	 * many interrupts each VF needs. SR-IOV MSIX resources are also
	 * cleared in the same manner.
	 */
	if (vsi->type != ICE_VSI_VF) {
		/* reclaim SW interrupts back to the common pool */
		FUNC2(pf->irq_tracker, vsi->base_vector, vsi->idx);
		pf->num_avail_sw_msix += vsi->num_q_vectors;
	}

	if (!FUNC4(pf)) {
		if (vsi->type == ICE_VSI_PF) {
			FUNC8(vsi, false);
			FUNC1(vsi, true, false);
			/* The Rx rule will only exist to remove if the LLDP FW
			 * engine is currently stopped
			 */
			if (!FUNC16(ICE_FLAG_FW_LLDP_AGENT, pf->flags))
				FUNC1(vsi, false, false);
		}
	}

	FUNC5(&pf->hw, vsi->idx);
	FUNC6(vsi->port_info, vsi->idx);
	FUNC12(vsi);
	FUNC14(vsi);

	/* make sure unregister_netdev() was called by checking __ICE_DOWN */
	if (vsi->netdev && FUNC16(__ICE_DOWN, vsi->state)) {
		FUNC0(vsi->netdev);
		vsi->netdev = NULL;
	}

	FUNC10(vsi);

	FUNC15(vsi);

	/* retain SW VSI data structure since it is needed to unregister and
	 * free VSI netdev when PF is not in reset recovery pending state,\
	 * for ex: during rmmod.
	 */
	if (!FUNC3(pf->state))
		FUNC9(vsi);

	return 0;
}