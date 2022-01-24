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
typedef  int /*<<< orphan*/  u8 ;
struct virtchnl_vlan_filter_list {int num_elements; scalar_t__* vlan_id; int /*<<< orphan*/  vsi_id; } ;
struct TYPE_3__ {scalar_t__ pvid; } ;
struct i40e_vsi {int /*<<< orphan*/  seid; TYPE_1__ info; } ;
struct i40e_vf {scalar_t__ num_vlan; size_t lan_vsi_idx; int /*<<< orphan*/  vf_id; int /*<<< orphan*/  vf_states; int /*<<< orphan*/  vf_caps; struct i40e_pf* pf; } ;
struct i40e_pf {TYPE_2__* pdev; int /*<<< orphan*/  hw; struct i40e_vsi** vsi; } ;
typedef  int /*<<< orphan*/  i40e_status ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_ERR_PARAM ; 
 scalar_t__ I40E_MAX_VLANID ; 
 scalar_t__ I40E_VC_MAX_VLAN_PER_VF ; 
 int /*<<< orphan*/  I40E_VF_STATE_ACTIVE ; 
 int /*<<< orphan*/  I40E_VF_STATE_MC_PROMISC ; 
 int /*<<< orphan*/  I40E_VF_STATE_UC_PROMISC ; 
 int /*<<< orphan*/  I40E_VIRTCHNL_VF_CAP_PRIVILEGE ; 
 int /*<<< orphan*/  VIRTCHNL_OP_ADD_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vf*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i40e_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_vsi*) ; 
 int FUNC6 (struct i40e_vsi*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i40e_vf *vf, u8 *msg)
{
	struct virtchnl_vlan_filter_list *vfl =
	    (struct virtchnl_vlan_filter_list *)msg;
	struct i40e_pf *pf = vf->pf;
	struct i40e_vsi *vsi = NULL;
	i40e_status aq_ret = 0;
	int i;

	if ((vf->num_vlan >= I40E_VC_MAX_VLAN_PER_VF) &&
	    !FUNC7(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps)) {
		FUNC0(&pf->pdev->dev,
			"VF is not trusted, switch the VF to trusted to add more VLAN addresses\n");
		goto error_param;
	}
	if (!FUNC7(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
	    !FUNC3(vf, vfl->vsi_id)) {
		aq_ret = I40E_ERR_PARAM;
		goto error_param;
	}

	for (i = 0; i < vfl->num_elements; i++) {
		if (vfl->vlan_id[i] > I40E_MAX_VLANID) {
			aq_ret = I40E_ERR_PARAM;
			FUNC0(&pf->pdev->dev,
				"invalid VF VLAN id %d\n", vfl->vlan_id[i]);
			goto error_param;
		}
	}
	vsi = pf->vsi[vf->lan_vsi_idx];
	if (vsi->info.pvid) {
		aq_ret = I40E_ERR_PARAM;
		goto error_param;
	}

	FUNC5(vsi);
	for (i = 0; i < vfl->num_elements; i++) {
		/* add new VLAN filter */
		int ret = FUNC6(vsi, vfl->vlan_id[i]);
		if (!ret)
			vf->num_vlan++;

		if (FUNC7(I40E_VF_STATE_UC_PROMISC, &vf->vf_states))
			FUNC2(&pf->hw, vsi->seid,
							   true,
							   vfl->vlan_id[i],
							   NULL);
		if (FUNC7(I40E_VF_STATE_MC_PROMISC, &vf->vf_states))
			FUNC1(&pf->hw, vsi->seid,
							   true,
							   vfl->vlan_id[i],
							   NULL);

		if (ret)
			FUNC0(&pf->pdev->dev,
				"Unable to add VLAN filter %d for VF %d, error %d\n",
				vfl->vlan_id[i], vf->vf_id, ret);
	}

error_param:
	/* send the response to the VF */
	return FUNC4(vf, VIRTCHNL_OP_ADD_VLAN, aq_ret);
}