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
struct i40e_vf {int trusted; scalar_t__ adq_enabled; } ;
struct i40e_pf {int num_alloc_vfs; int flags; int /*<<< orphan*/  state; TYPE_2__* pdev; struct i40e_vf* vf; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct i40e_pf* back; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int I40E_FLAG_MFP_ENABLED ; 
 int /*<<< orphan*/  __I40E_VIRTCHNL_OP_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_vf*) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_vf*) ; 
 struct i40e_netdev_priv* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct net_device *netdev, int vf_id, bool setting)
{
	struct i40e_netdev_priv *np = FUNC6(netdev);
	struct i40e_pf *pf = np->vsi->back;
	struct i40e_vf *vf;
	int ret = 0;

	if (FUNC7(__I40E_VIRTCHNL_OP_PENDING, pf->state)) {
		FUNC3(&pf->pdev->dev, "Unable to configure VFs, other operation is pending.\n");
		return -EAGAIN;
	}

	/* validate the request */
	if (vf_id >= pf->num_alloc_vfs) {
		FUNC1(&pf->pdev->dev, "Invalid VF Identifier %d\n", vf_id);
		ret = -EINVAL;
		goto out;
	}

	if (pf->flags & I40E_FLAG_MFP_ENABLED) {
		FUNC1(&pf->pdev->dev, "Trusted VF not supported in MFP mode.\n");
		ret = -EINVAL;
		goto out;
	}

	vf = &pf->vf[vf_id];

	if (setting == vf->trusted)
		goto out;

	vf->trusted = setting;
	FUNC5(vf);
	FUNC2(&pf->pdev->dev, "VF %u is now %strusted\n",
		 vf_id, setting ? "" : "un");

	if (vf->adq_enabled) {
		if (!vf->trusted) {
			FUNC2(&pf->pdev->dev,
				 "VF %u no longer Trusted, deleting all cloud filters\n",
				 vf_id);
			FUNC4(vf);
		}
	}

out:
	FUNC0(__I40E_VIRTCHNL_OP_PENDING, pf->state);
	return ret;
}