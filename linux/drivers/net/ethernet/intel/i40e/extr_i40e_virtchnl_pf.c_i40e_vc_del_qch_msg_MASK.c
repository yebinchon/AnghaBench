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
struct i40e_vf {int adq_enabled; int /*<<< orphan*/  vf_id; scalar_t__ num_tc; int /*<<< orphan*/  vf_states; struct i40e_pf* pf; } ;
struct i40e_pf {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  i40e_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_ERR_PARAM ; 
 int I40E_SUCCESS ; 
 int /*<<< orphan*/  I40E_VF_STATE_ACTIVE ; 
 int /*<<< orphan*/  VIRTCHNL_OP_DISABLE_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_vf*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_vf*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_vf*) ; 
 int FUNC5 (struct i40e_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i40e_vf *vf, u8 *msg)
{
	struct i40e_pf *pf = vf->pf;
	i40e_status aq_ret = 0;

	if (!FUNC6(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
		aq_ret = I40E_ERR_PARAM;
		goto err;
	}

	if (vf->adq_enabled) {
		FUNC1(vf);
		FUNC2(vf);
		vf->adq_enabled = false;
		vf->num_tc = 0;
		FUNC0(&pf->pdev->dev,
			 "Deleting Queue Channels and cloud filters for ADq on VF %d\n",
			 vf->vf_id);
	} else {
		FUNC0(&pf->pdev->dev, "VF %d trying to delete queue channels but ADq isn't enabled\n",
			 vf->vf_id);
		aq_ret = I40E_ERR_PARAM;
	}

	/* reset the VF in order to allocate resources */
	FUNC4(vf);
	FUNC3(vf, false);

	return I40E_SUCCESS;

err:
	return FUNC5(vf, VIRTCHNL_OP_DISABLE_CHANNELS,
				       aq_ret);
}