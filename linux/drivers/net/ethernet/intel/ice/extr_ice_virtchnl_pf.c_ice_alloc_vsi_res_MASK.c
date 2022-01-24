#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ice_vsi {int /*<<< orphan*/  vsi_num; int /*<<< orphan*/  idx; } ;
struct TYPE_4__ {int /*<<< orphan*/ * addr; } ;
struct ice_vf {int port_vlan_id; int num_mac; TYPE_1__ dflt_lan_addr; int /*<<< orphan*/  lan_vsi_num; int /*<<< orphan*/  lan_vsi_idx; int /*<<< orphan*/  vf_id; int /*<<< orphan*/  first_vector_idx; struct ice_pf* pf; } ;
struct TYPE_6__ {int /*<<< orphan*/  port_info; } ;
struct ice_pf {TYPE_2__* pdev; TYPE_3__ hw; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETH_ALEN ; 
 int ICE_VLAN_M ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ice_vsi*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_pf*,struct ice_vf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ice_vsi* FUNC7 (struct ice_pf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ice_vsi*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ice_vsi*,int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmp_add_list ; 

__attribute__((used)) static int FUNC11(struct ice_vf *vf)
{
	struct ice_pf *pf = vf->pf;
	FUNC0(tmp_add_list);
	u8 broadcast[ETH_ALEN];
	struct ice_vsi *vsi;
	int status = 0;

	/* first vector index is the VFs OICR index */
	vf->first_vector_idx = FUNC5(pf, vf);

	vsi = FUNC7(pf, pf->hw.port_info, vf->vf_id);
	if (!vsi) {
		FUNC1(&pf->pdev->dev, "Failed to create VF VSI\n");
		return -ENOMEM;
	}

	vf->lan_vsi_idx = vsi->idx;
	vf->lan_vsi_num = vsi->vsi_num;

	/* Check if port VLAN exist before, and restore it accordingly */
	if (vf->port_vlan_id) {
		FUNC9(vsi, vf->port_vlan_id, true);
		FUNC8(vsi, vf->port_vlan_id & ICE_VLAN_M);
	}

	FUNC2(broadcast);

	status = FUNC4(vsi, &tmp_add_list, broadcast);
	if (status)
		goto ice_alloc_vsi_res_exit;

	if (FUNC10(vf->dflt_lan_addr.addr)) {
		status = FUNC4(vsi, &tmp_add_list,
					     vf->dflt_lan_addr.addr);
		if (status)
			goto ice_alloc_vsi_res_exit;
	}

	status = FUNC3(&pf->hw, &tmp_add_list);
	if (status)
		FUNC1(&pf->pdev->dev,
			"could not add mac filters error %d\n", status);
	else
		vf->num_mac = 1;

	/* Clear this bit after VF initialization since we shouldn't reclaim
	 * and reassign interrupts for synchronous or asynchronous VFR events.
	 * We don't want to reconfigure interrupts since AVF driver doesn't
	 * expect vector assignment to be changed unless there is a request for
	 * more vectors.
	 */
ice_alloc_vsi_res_exit:
	FUNC6(&pf->pdev->dev, &tmp_add_list);
	return status;
}