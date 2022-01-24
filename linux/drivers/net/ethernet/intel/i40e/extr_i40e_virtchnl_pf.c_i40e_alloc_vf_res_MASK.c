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
struct i40e_vf {scalar_t__ num_req_queues; size_t lan_vsi_idx; int adq_enabled; int num_tc; int num_queue_pairs; int /*<<< orphan*/  vf_states; int /*<<< orphan*/  vf_caps; scalar_t__ trusted; int /*<<< orphan*/  vf_id; struct i40e_pf* pf; } ;
struct i40e_pf {scalar_t__ queues_left; scalar_t__ num_vf_qps; TYPE_2__* pdev; TYPE_1__** vsi; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ alloc_queue_pairs; } ;

/* Variables and functions */
 scalar_t__ I40E_DEFAULT_QUEUES_PER_VF ; 
 scalar_t__ I40E_MAX_VF_QUEUES ; 
 int /*<<< orphan*/  I40E_VF_STATE_INIT ; 
 int /*<<< orphan*/  I40E_VIRTCHNL_VF_CAP_PRIVILEGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i40e_vf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i40e_vf *vf)
{
	struct i40e_pf *pf = vf->pf;
	int total_queue_pairs = 0;
	int ret, idx;

	if (vf->num_req_queues &&
	    vf->num_req_queues <= pf->queues_left + I40E_DEFAULT_QUEUES_PER_VF)
		pf->num_vf_qps = vf->num_req_queues;
	else
		pf->num_vf_qps = I40E_DEFAULT_QUEUES_PER_VF;

	/* allocate hw vsi context & associated resources */
	ret = FUNC2(vf, 0);
	if (ret)
		goto error_alloc;
	total_queue_pairs += pf->vsi[vf->lan_vsi_idx]->alloc_queue_pairs;

	/* allocate additional VSIs based on tc information for ADq */
	if (vf->adq_enabled) {
		if (pf->queues_left >=
		    (I40E_MAX_VF_QUEUES - I40E_DEFAULT_QUEUES_PER_VF)) {
			/* TC 0 always belongs to VF VSI */
			for (idx = 1; idx < vf->num_tc; idx++) {
				ret = FUNC2(vf, idx);
				if (ret)
					goto error_alloc;
			}
			/* send correct number of queues */
			total_queue_pairs = I40E_MAX_VF_QUEUES;
		} else {
			FUNC1(&pf->pdev->dev, "VF %d: Not enough queues to allocate, disabling ADq\n",
				 vf->vf_id);
			vf->adq_enabled = false;
		}
	}

	/* We account for each VF to get a default number of queue pairs.  If
	 * the VF has now requested more, we need to account for that to make
	 * certain we never request more queues than we actually have left in
	 * HW.
	 */
	if (total_queue_pairs > I40E_DEFAULT_QUEUES_PER_VF)
		pf->queues_left -=
			total_queue_pairs - I40E_DEFAULT_QUEUES_PER_VF;

	if (vf->trusted)
		FUNC4(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);
	else
		FUNC0(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps);

	/* store the total qps number for the runtime
	 * VF req validation
	 */
	vf->num_queue_pairs = total_queue_pairs;

	/* VF is now completely initialized */
	FUNC4(I40E_VF_STATE_INIT, &vf->vf_states);

error_alloc:
	if (ret)
		FUNC3(vf);

	return ret;
}