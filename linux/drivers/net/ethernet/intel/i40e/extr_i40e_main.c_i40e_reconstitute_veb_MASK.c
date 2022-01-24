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
struct i40e_vsi {scalar_t__ veb_idx; int flags; int /*<<< orphan*/  uplink_seid; } ;
struct i40e_veb {scalar_t__ idx; scalar_t__ veb_idx; int /*<<< orphan*/  seid; int /*<<< orphan*/  uplink_seid; int /*<<< orphan*/  bridge_mode; struct i40e_pf* pf; } ;
struct i40e_pf {int num_alloc_vsi; size_t lan_vsi; int flags; struct i40e_veb** veb; TYPE_1__* pdev; struct i40e_vsi** vsi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRIDGE_MODE_VEB ; 
 int /*<<< orphan*/  BRIDGE_MODE_VEPA ; 
 int ENOENT ; 
 int I40E_FLAG_VEB_MODE_ENABLED ; 
 int I40E_MAX_VEB ; 
 int I40E_VSI_FLAG_VEB_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (struct i40e_veb*,struct i40e_vsi*) ; 
 int FUNC2 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_veb*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_vsi*) ; 

__attribute__((used)) static int FUNC5(struct i40e_veb *veb)
{
	struct i40e_vsi *ctl_vsi = NULL;
	struct i40e_pf *pf = veb->pf;
	int v, veb_idx;
	int ret;

	/* build VSI that owns this VEB, temporarily attached to base VEB */
	for (v = 0; v < pf->num_alloc_vsi && !ctl_vsi; v++) {
		if (pf->vsi[v] &&
		    pf->vsi[v]->veb_idx == veb->idx &&
		    pf->vsi[v]->flags & I40E_VSI_FLAG_VEB_OWNER) {
			ctl_vsi = pf->vsi[v];
			break;
		}
	}
	if (!ctl_vsi) {
		FUNC0(&pf->pdev->dev,
			 "missing owner VSI for veb_idx %d\n", veb->idx);
		ret = -ENOENT;
		goto end_reconstitute;
	}
	if (ctl_vsi != pf->vsi[pf->lan_vsi])
		ctl_vsi->uplink_seid = pf->vsi[pf->lan_vsi]->uplink_seid;
	ret = FUNC2(ctl_vsi);
	if (ret) {
		FUNC0(&pf->pdev->dev,
			 "rebuild of veb_idx %d owner VSI failed: %d\n",
			 veb->idx, ret);
		goto end_reconstitute;
	}
	FUNC4(ctl_vsi);

	/* create the VEB in the switch and move the VSI onto the VEB */
	ret = FUNC1(veb, ctl_vsi);
	if (ret)
		goto end_reconstitute;

	if (pf->flags & I40E_FLAG_VEB_MODE_ENABLED)
		veb->bridge_mode = BRIDGE_MODE_VEB;
	else
		veb->bridge_mode = BRIDGE_MODE_VEPA;
	FUNC3(veb);

	/* create the remaining VSIs attached to this VEB */
	for (v = 0; v < pf->num_alloc_vsi; v++) {
		if (!pf->vsi[v] || pf->vsi[v] == ctl_vsi)
			continue;

		if (pf->vsi[v]->veb_idx == veb->idx) {
			struct i40e_vsi *vsi = pf->vsi[v];

			vsi->uplink_seid = veb->seid;
			ret = FUNC2(vsi);
			if (ret) {
				FUNC0(&pf->pdev->dev,
					 "rebuild of vsi_idx %d failed: %d\n",
					 v, ret);
				goto end_reconstitute;
			}
			FUNC4(vsi);
		}
	}

	/* create any VEBs attached to this VEB - RECURSION */
	for (veb_idx = 0; veb_idx < I40E_MAX_VEB; veb_idx++) {
		if (pf->veb[veb_idx] && pf->veb[veb_idx]->veb_idx == veb->idx) {
			pf->veb[veb_idx]->uplink_seid = veb->seid;
			ret = FUNC5(pf->veb[veb_idx]);
			if (ret)
				break;
		}
	}

end_reconstitute:
	return ret;
}