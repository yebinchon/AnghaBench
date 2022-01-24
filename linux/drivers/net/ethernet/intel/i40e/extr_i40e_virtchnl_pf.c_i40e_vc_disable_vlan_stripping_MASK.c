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
struct i40e_vsi {int dummy; } ;
struct i40e_vf {size_t lan_vsi_idx; TYPE_1__* pf; int /*<<< orphan*/  vf_states; } ;
typedef  int /*<<< orphan*/  i40e_status ;
struct TYPE_2__ {struct i40e_vsi** vsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_ERR_PARAM ; 
 int /*<<< orphan*/  I40E_VF_STATE_ACTIVE ; 
 int /*<<< orphan*/  VIRTCHNL_OP_DISABLE_VLAN_STRIPPING ; 
 int FUNC0 (struct i40e_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i40e_vf *vf, u8 *msg)
{
	i40e_status aq_ret = 0;
	struct i40e_vsi *vsi;

	if (!FUNC2(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
		aq_ret = I40E_ERR_PARAM;
		goto err;
	}

	vsi = vf->pf->vsi[vf->lan_vsi_idx];
	FUNC1(vsi);

	/* send the response to the VF */
err:
	return FUNC0(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING,
				       aq_ret);
}