#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct TYPE_12__ {scalar_t__ pvid; } ;
struct i40e_vsi {int /*<<< orphan*/  id; TYPE_5__ info; TYPE_7__* back; int /*<<< orphan*/  mac_filter_hash_lock; } ;
struct i40e_vf {size_t lan_vsi_idx; int port_vlan_id; int /*<<< orphan*/  vf_states; int /*<<< orphan*/  lan_vsi_id; } ;
struct i40e_pf {int /*<<< orphan*/  state; TYPE_6__* pdev; struct i40e_vsi** vsi; struct i40e_vf* vf; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_10__ {int /*<<< orphan*/  asq_last_status; } ;
struct TYPE_11__ {TYPE_3__ aq; } ;
struct TYPE_14__ {TYPE_4__ hw; TYPE_2__* pdev; } ;
struct TYPE_13__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {struct i40e_pf* back; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int I40E_MAX_VLANID ; 
 int /*<<< orphan*/  I40E_VF_STATE_INIT ; 
 int /*<<< orphan*/  I40E_VF_STATE_MC_PROMISC ; 
 int /*<<< orphan*/  I40E_VF_STATE_UC_PROMISC ; 
 int I40E_VLAN_ANY ; 
 int I40E_VLAN_PRIORITY_SHIFT ; 
 int VLAN_VID_MASK ; 
 int /*<<< orphan*/  __I40E_VIRTCHNL_OP_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i40e_vsi*,int) ; 
 int FUNC6 (struct i40e_vf*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_vsi*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*) ; 
 int FUNC9 (struct i40e_pf*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i40e_vf*) ; 
 int FUNC11 (struct i40e_vsi*,int) ; 
 scalar_t__ FUNC12 (struct i40e_vsi*) ; 
 int /*<<< orphan*/  FUNC13 (struct i40e_vsi*) ; 
 int FUNC14 (scalar_t__) ; 
 struct i40e_netdev_priv* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC20(struct net_device *netdev, int vf_id,
			      u16 vlan_id, u8 qos, __be16 vlan_proto)
{
	u16 vlanprio = vlan_id | (qos << I40E_VLAN_PRIORITY_SHIFT);
	struct i40e_netdev_priv *np = FUNC15(netdev);
	bool allmulti = false, alluni = false;
	struct i40e_pf *pf = np->vsi->back;
	struct i40e_vsi *vsi;
	struct i40e_vf *vf;
	int ret = 0;

	if (FUNC18(__I40E_VIRTCHNL_OP_PENDING, pf->state)) {
		FUNC3(&pf->pdev->dev, "Unable to configure VFs, other operation is pending.\n");
		return -EAGAIN;
	}

	/* validate the request */
	ret = FUNC9(pf, vf_id);
	if (ret)
		goto error_pvid;

	if ((vlan_id > I40E_MAX_VLANID) || (qos > 7)) {
		FUNC1(&pf->pdev->dev, "Invalid VF Parameters\n");
		ret = -EINVAL;
		goto error_pvid;
	}

	if (vlan_proto != FUNC4(ETH_P_8021Q)) {
		FUNC1(&pf->pdev->dev, "VF VLAN protocol is not supported\n");
		ret = -EPROTONOSUPPORT;
		goto error_pvid;
	}

	vf = &pf->vf[vf_id];
	vsi = pf->vsi[vf->lan_vsi_idx];
	if (!FUNC19(I40E_VF_STATE_INIT, &vf->vf_states)) {
		FUNC1(&pf->pdev->dev, "VF %d still in reset. Try again.\n",
			vf_id);
		ret = -EAGAIN;
		goto error_pvid;
	}

	if (FUNC14(vsi->info.pvid) == vlanprio)
		/* duplicate request, so just return success */
		goto error_pvid;

	if (FUNC12(vsi)) {
		FUNC1(&pf->pdev->dev,
			"VF %d has already configured VLAN filters and the administrator is requesting a port VLAN override.\nPlease unload and reload the VF driver for this change to take effect.\n",
			vf_id);
		/* Administrator Error - knock the VF offline until he does
		 * the right thing by reconfiguring his network correctly
		 * and then reloading the VF driver.
		 */
		FUNC10(vf);
		/* During reset the VF got a new VSI, so refresh the pointer. */
		vsi = pf->vsi[vf->lan_vsi_idx];
	}

	/* Locked once because multiple functions below iterate list */
	FUNC16(&vsi->mac_filter_hash_lock);

	/* Check for condition where there was already a port VLAN ID
	 * filter set and now it is being deleted by setting it to zero.
	 * Additionally check for the condition where there was a port
	 * VLAN but now there is a new and different port VLAN being set.
	 * Before deleting all the old VLAN filters we must add new ones
	 * with -1 (I40E_VLAN_ANY) or otherwise we're left with all our
	 * MAC addresses deleted.
	 */
	if ((!(vlan_id || qos) ||
	    vlanprio != FUNC14(vsi->info.pvid)) &&
	    vsi->info.pvid) {
		ret = FUNC5(vsi, I40E_VLAN_ANY);
		if (ret) {
			FUNC2(&vsi->back->pdev->dev,
				 "add VF VLAN failed, ret=%d aq_err=%d\n", ret,
				 vsi->back->hw.aq.asq_last_status);
			FUNC17(&vsi->mac_filter_hash_lock);
			goto error_pvid;
		}
	}

	if (vsi->info.pvid) {
		/* remove all filters on the old VLAN */
		FUNC7(vsi, (FUNC14(vsi->info.pvid) &
					   VLAN_VID_MASK));
	}

	FUNC17(&vsi->mac_filter_hash_lock);

	/* disable promisc modes in case they were enabled */
	ret = FUNC6(vf, vf->lan_vsi_id,
					      allmulti, alluni);
	if (ret) {
		FUNC1(&pf->pdev->dev, "Unable to config VF promiscuous mode\n");
		goto error_pvid;
	}

	if (vlan_id || qos)
		ret = FUNC11(vsi, vlanprio);
	else
		FUNC13(vsi);
	FUNC16(&vsi->mac_filter_hash_lock);

	if (vlan_id) {
		FUNC2(&pf->pdev->dev, "Setting VLAN %d, QOS 0x%x on VF %d\n",
			 vlan_id, qos, vf_id);

		/* add new VLAN filter for each MAC */
		ret = FUNC5(vsi, vlan_id);
		if (ret) {
			FUNC2(&vsi->back->pdev->dev,
				 "add VF VLAN failed, ret=%d aq_err=%d\n", ret,
				 vsi->back->hw.aq.asq_last_status);
			FUNC17(&vsi->mac_filter_hash_lock);
			goto error_pvid;
		}

		/* remove the previously added non-VLAN MAC filters */
		FUNC7(vsi, I40E_VLAN_ANY);
	}

	FUNC17(&vsi->mac_filter_hash_lock);

	if (FUNC19(I40E_VF_STATE_UC_PROMISC, &vf->vf_states))
		alluni = true;

	if (FUNC19(I40E_VF_STATE_MC_PROMISC, &vf->vf_states))
		allmulti = true;

	/* Schedule the worker thread to take care of applying changes */
	FUNC8(vsi->back);

	if (ret) {
		FUNC1(&pf->pdev->dev, "Unable to update VF vsi context\n");
		goto error_pvid;
	}

	/* The Port VLAN needs to be saved across resets the same as the
	 * default LAN MAC address.
	 */
	vf->port_vlan_id = FUNC14(vsi->info.pvid);

	ret = FUNC6(vf, vsi->id, allmulti, alluni);
	if (ret) {
		FUNC1(&pf->pdev->dev, "Unable to config vf promiscuous mode\n");
		goto error_pvid;
	}

	ret = 0;

error_pvid:
	FUNC0(__I40E_VIRTCHNL_OP_PENDING, pf->state);
	return ret;
}