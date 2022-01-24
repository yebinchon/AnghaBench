#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ pvid; } ;
struct ice_vsi {TYPE_3__ info; } ;
struct ice_vf {size_t lan_vsi_idx; int port_vlan_id; int /*<<< orphan*/  vf_states; } ;
struct ice_pf {int num_alloc_vfs; TYPE_2__* pdev; struct ice_vsi** vsi; struct ice_vf* vf; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
typedef  scalar_t__ __be16 ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct ice_pf* back; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int ICE_MAX_VLANID ; 
 int /*<<< orphan*/  ICE_VF_STATE_INIT ; 
 int ICE_VLAN_PRIORITY_S ; 
 int VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ice_vsi*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_vsi*,int) ; 
 int FUNC5 (struct ice_vsi*,int,int) ; 
 int FUNC6 (scalar_t__) ; 
 struct ice_netdev_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
		     __be16 vlan_proto)
{
	u16 vlanprio = vlan_id | (qos << ICE_VLAN_PRIORITY_S);
	struct ice_netdev_priv *np = FUNC7(netdev);
	struct ice_pf *pf = np->vsi->back;
	struct ice_vsi *vsi;
	struct ice_vf *vf;
	int ret = 0;

	/* validate the request */
	if (vf_id >= pf->num_alloc_vfs) {
		FUNC0(&pf->pdev->dev, "invalid VF id: %d\n", vf_id);
		return -EINVAL;
	}

	if (vlan_id > ICE_MAX_VLANID || qos > 7) {
		FUNC0(&pf->pdev->dev, "Invalid VF Parameters\n");
		return -EINVAL;
	}

	if (vlan_proto != FUNC2(ETH_P_8021Q)) {
		FUNC0(&pf->pdev->dev, "VF VLAN protocol is not supported\n");
		return -EPROTONOSUPPORT;
	}

	vf = &pf->vf[vf_id];
	vsi = pf->vsi[vf->lan_vsi_idx];
	if (!FUNC8(ICE_VF_STATE_INIT, vf->vf_states)) {
		FUNC0(&pf->pdev->dev, "VF %d in reset. Try again.\n", vf_id);
		return -EBUSY;
	}

	if (FUNC6(vsi->info.pvid) == vlanprio) {
		/* duplicate request, so just return success */
		FUNC1(&pf->pdev->dev,
			 "Duplicate pvid %d request\n", vlanprio);
		return ret;
	}

	/* If PVID, then remove all filters on the old VLAN */
	if (vsi->info.pvid)
		FUNC4(vsi, (FUNC6(vsi->info.pvid) &
				  VLAN_VID_MASK));

	if (vlan_id || qos) {
		ret = FUNC5(vsi, vlanprio, true);
		if (ret)
			goto error_set_pvid;
	} else {
		FUNC5(vsi, 0, false);
		vsi->info.pvid = 0;
	}

	if (vlan_id) {
		FUNC1(&pf->pdev->dev, "Setting VLAN %d, QOS 0x%x on VF %d\n",
			 vlan_id, qos, vf_id);

		/* add new VLAN filter for each MAC */
		ret = FUNC3(vsi, vlan_id);
		if (ret)
			goto error_set_pvid;
	}

	/* The Port VLAN needs to be saved across resets the same as the
	 * default LAN MAC address.
	 */
	vf->port_vlan_id = FUNC6(vsi->info.pvid);

error_set_pvid:
	return ret;
}