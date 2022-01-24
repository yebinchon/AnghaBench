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
struct virtchnl_queue_select {scalar_t__ rx_queues; scalar_t__ tx_queues; int /*<<< orphan*/  vsi_id; } ;
struct i40e_vf {size_t lan_vsi_idx; int num_tc; int queues_enabled; TYPE_1__* ch; scalar_t__ adq_enabled; int /*<<< orphan*/  vf_states; struct i40e_pf* pf; } ;
struct i40e_pf {int /*<<< orphan*/ * vsi; } ;
typedef  int /*<<< orphan*/  i40e_status ;
struct TYPE_2__ {size_t vsi_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_ERR_PARAM ; 
 int /*<<< orphan*/  I40E_ERR_TIMEOUT ; 
 int /*<<< orphan*/  I40E_VF_STATE_ACTIVE ; 
 int /*<<< orphan*/  VIRTCHNL_OP_ENABLE_QUEUES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_vf*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i40e_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i40e_vf *vf, u8 *msg)
{
	struct virtchnl_queue_select *vqs =
	    (struct virtchnl_queue_select *)msg;
	struct i40e_pf *pf = vf->pf;
	i40e_status aq_ret = 0;
	int i;

	if (!FUNC5(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
		aq_ret = I40E_ERR_PARAM;
		goto error_param;
	}

	if (!FUNC2(vf, vqs->vsi_id)) {
		aq_ret = I40E_ERR_PARAM;
		goto error_param;
	}

	if ((0 == vqs->rx_queues) && (0 == vqs->tx_queues)) {
		aq_ret = I40E_ERR_PARAM;
		goto error_param;
	}

	/* Use the queue bit map sent by the VF */
	if (FUNC0(pf->vsi[vf->lan_vsi_idx], vqs->rx_queues,
				  true)) {
		aq_ret = I40E_ERR_TIMEOUT;
		goto error_param;
	}
	if (FUNC1(pf->vsi[vf->lan_vsi_idx], vqs->tx_queues,
				  true)) {
		aq_ret = I40E_ERR_TIMEOUT;
		goto error_param;
	}

	/* need to start the rings for additional ADq VSI's as well */
	if (vf->adq_enabled) {
		/* zero belongs to LAN VSI */
		for (i = 1; i < vf->num_tc; i++) {
			if (FUNC4(pf->vsi[vf->ch[i].vsi_idx]))
				aq_ret = I40E_ERR_TIMEOUT;
		}
	}

	vf->queues_enabled = true;

error_param:
	/* send the response to the VF */
	return FUNC3(vf, VIRTCHNL_OP_ENABLE_QUEUES,
				       aq_ret);
}