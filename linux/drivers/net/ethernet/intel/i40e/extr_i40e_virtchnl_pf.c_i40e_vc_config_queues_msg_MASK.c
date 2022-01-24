#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct virtchnl_vsi_queue_config_info {scalar_t__ vsi_id; scalar_t__ num_queue_pairs; struct virtchnl_queue_pair_info* qpair; } ;
struct TYPE_6__ {scalar_t__ queue_id; scalar_t__ vsi_id; } ;
struct TYPE_7__ {scalar_t__ vsi_id; scalar_t__ queue_id; } ;
struct virtchnl_queue_pair_info {TYPE_2__ txq; TYPE_3__ rxq; } ;
struct i40e_vf {size_t lan_vsi_idx; int num_tc; TYPE_4__* ch; scalar_t__ adq_enabled; int /*<<< orphan*/  vf_states; struct i40e_pf* pf; } ;
struct i40e_pf {TYPE_1__** vsi; } ;
typedef  int /*<<< orphan*/  i40e_status ;
struct TYPE_8__ {int num_qps; scalar_t__ vsi_id; size_t vsi_idx; } ;
struct TYPE_5__ {int num_queue_pairs; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  I40E_ERR_NO_AVAILABLE_VSI ; 
 int /*<<< orphan*/  I40E_ERR_PARAM ; 
 scalar_t__ I40E_MAX_VF_QUEUES ; 
 int I40E_MAX_VF_VSI ; 
 int /*<<< orphan*/  I40E_VF_STATE_ACTIVE ; 
 int /*<<< orphan*/  VIRTCHNL_OP_CONFIG_VSI_QUEUES ; 
 scalar_t__ FUNC1 (struct i40e_vf*,scalar_t__,scalar_t__,TYPE_3__*) ; 
 scalar_t__ FUNC2 (struct i40e_vf*,scalar_t__,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vf*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_vf*,scalar_t__) ; 
 int FUNC5 (struct i40e_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i40e_vf *vf, u8 *msg)
{
	struct virtchnl_vsi_queue_config_info *qci =
	    (struct virtchnl_vsi_queue_config_info *)msg;
	struct virtchnl_queue_pair_info *qpi;
	struct i40e_pf *pf = vf->pf;
	u16 vsi_id, vsi_queue_id = 0;
	u16 num_qps_all = 0;
	i40e_status aq_ret = 0;
	int i, j = 0, idx = 0;

	if (!FUNC6(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
		aq_ret = I40E_ERR_PARAM;
		goto error_param;
	}

	if (!FUNC4(vf, qci->vsi_id)) {
		aq_ret = I40E_ERR_PARAM;
		goto error_param;
	}

	if (qci->num_queue_pairs > I40E_MAX_VF_QUEUES) {
		aq_ret = I40E_ERR_PARAM;
		goto error_param;
	}

	if (vf->adq_enabled) {
		for (i = 0; i < I40E_MAX_VF_VSI; i++)
			num_qps_all += vf->ch[i].num_qps;
		if (num_qps_all != qci->num_queue_pairs) {
			aq_ret = I40E_ERR_PARAM;
			goto error_param;
		}
	}

	vsi_id = qci->vsi_id;

	for (i = 0; i < qci->num_queue_pairs; i++) {
		qpi = &qci->qpair[i];

		if (!vf->adq_enabled) {
			if (!FUNC3(vf, vsi_id,
						      qpi->txq.queue_id)) {
				aq_ret = I40E_ERR_PARAM;
				goto error_param;
			}

			vsi_queue_id = qpi->txq.queue_id;

			if (qpi->txq.vsi_id != qci->vsi_id ||
			    qpi->rxq.vsi_id != qci->vsi_id ||
			    qpi->rxq.queue_id != vsi_queue_id) {
				aq_ret = I40E_ERR_PARAM;
				goto error_param;
			}
		}

		if (vf->adq_enabled) {
			if (idx >= FUNC0(vf->ch)) {
				aq_ret = I40E_ERR_NO_AVAILABLE_VSI;
				goto error_param;
			}
			vsi_id = vf->ch[idx].vsi_id;
		}

		if (FUNC1(vf, vsi_id, vsi_queue_id,
					     &qpi->rxq) ||
		    FUNC2(vf, vsi_id, vsi_queue_id,
					     &qpi->txq)) {
			aq_ret = I40E_ERR_PARAM;
			goto error_param;
		}

		/* For ADq there can be up to 4 VSIs with max 4 queues each.
		 * VF does not know about these additional VSIs and all
		 * it cares is about its own queues. PF configures these queues
		 * to its appropriate VSIs based on TC mapping
		 */
		if (vf->adq_enabled) {
			if (idx >= FUNC0(vf->ch)) {
				aq_ret = I40E_ERR_NO_AVAILABLE_VSI;
				goto error_param;
			}
			if (j == (vf->ch[idx].num_qps - 1)) {
				idx++;
				j = 0; /* resetting the queue count */
				vsi_queue_id = 0;
			} else {
				j++;
				vsi_queue_id++;
			}
		}
	}
	/* set vsi num_queue_pairs in use to num configured by VF */
	if (!vf->adq_enabled) {
		pf->vsi[vf->lan_vsi_idx]->num_queue_pairs =
			qci->num_queue_pairs;
	} else {
		for (i = 0; i < vf->num_tc; i++)
			pf->vsi[vf->ch[i].vsi_idx]->num_queue_pairs =
			       vf->ch[i].num_qps;
	}

error_param:
	/* send the response to the VF */
	return FUNC5(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
				       aq_ret);
}