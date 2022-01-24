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
struct net_device {int dummy; } ;
struct i40e_vsi {int /*<<< orphan*/  seid; } ;
struct i40e_vf {size_t lan_vsi_idx; int tx_rate; int /*<<< orphan*/  vf_states; } ;
struct i40e_pf {int /*<<< orphan*/  state; TYPE_2__* pdev; struct i40e_vsi** vsi; struct i40e_vf* vf; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct i40e_pf* back; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  I40E_VF_STATE_INIT ; 
 int /*<<< orphan*/  __I40E_VIRTCHNL_OP_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct i40e_vsi*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct i40e_pf*,int) ; 
 struct i40e_netdev_priv* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct net_device *netdev, int vf_id, int min_tx_rate,
		       int max_tx_rate)
{
	struct i40e_netdev_priv *np = FUNC5(netdev);
	struct i40e_pf *pf = np->vsi->back;
	struct i40e_vsi *vsi;
	struct i40e_vf *vf;
	int ret = 0;

	if (FUNC6(__I40E_VIRTCHNL_OP_PENDING, pf->state)) {
		FUNC2(&pf->pdev->dev, "Unable to configure VFs, other operation is pending.\n");
		return -EAGAIN;
	}

	/* validate the request */
	ret = FUNC4(pf, vf_id);
	if (ret)
		goto error;

	if (min_tx_rate) {
		FUNC1(&pf->pdev->dev, "Invalid min tx rate (%d) (greater than 0) specified for VF %d.\n",
			min_tx_rate, vf_id);
		ret = -EINVAL;
		goto error;
	}

	vf = &pf->vf[vf_id];
	vsi = pf->vsi[vf->lan_vsi_idx];
	if (!FUNC7(I40E_VF_STATE_INIT, &vf->vf_states)) {
		FUNC1(&pf->pdev->dev, "VF %d still in reset. Try again.\n",
			vf_id);
		ret = -EAGAIN;
		goto error;
	}

	ret = FUNC3(vsi, vsi->seid, max_tx_rate);
	if (ret)
		goto error;

	vf->tx_rate = max_tx_rate;
error:
	FUNC0(__I40E_VIRTCHNL_OP_PENDING, pf->state);
	return ret;
}