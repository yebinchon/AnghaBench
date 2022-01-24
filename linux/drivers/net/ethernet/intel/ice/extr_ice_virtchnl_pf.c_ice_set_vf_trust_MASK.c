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
struct net_device {int dummy; } ;
struct ice_vsi {struct ice_pf* back; } ;
struct ice_vf {int trusted; int /*<<< orphan*/  vf_states; } ;
struct ice_pf {int num_alloc_vfs; TYPE_1__* pdev; struct ice_vf* vf; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  ICE_VF_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_vf*) ; 
 struct ice_netdev_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct net_device *netdev, int vf_id, bool trusted)
{
	struct ice_netdev_priv *np = FUNC3(netdev);
	struct ice_vsi *vsi = np->vsi;
	struct ice_pf *pf = vsi->back;
	struct ice_vf *vf;

	/* validate the request */
	if (vf_id >= pf->num_alloc_vfs) {
		FUNC0(&pf->pdev->dev, "invalid VF id: %d\n", vf_id);
		return -EINVAL;
	}

	vf = &pf->vf[vf_id];
	if (!FUNC4(ICE_VF_STATE_INIT, vf->vf_states)) {
		FUNC0(&pf->pdev->dev, "VF %d in reset. Try again.\n", vf_id);
		return -EBUSY;
	}

	/* Check if already trusted */
	if (trusted == vf->trusted)
		return 0;

	vf->trusted = trusted;
	FUNC2(vf);
	FUNC1(&pf->pdev->dev, "VF %u is now %strusted\n",
		 vf_id, trusted ? "" : "un");

	return 0;
}