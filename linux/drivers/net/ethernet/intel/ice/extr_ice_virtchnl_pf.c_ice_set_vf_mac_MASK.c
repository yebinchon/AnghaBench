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
struct net_device {int dummy; } ;
struct ice_vsi {struct ice_pf* back; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct ice_vf {int pf_set_mac; TYPE_1__ dflt_lan_addr; int /*<<< orphan*/  vf_states; } ;
struct ice_pf {int num_alloc_vfs; struct ice_vf* vf; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  ICE_VF_STATE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_vf*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int,int /*<<< orphan*/ *) ; 
 struct ice_netdev_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct net_device *netdev, int vf_id, u8 *mac)
{
	struct ice_netdev_priv *np = FUNC6(netdev);
	struct ice_vsi *vsi = np->vsi;
	struct ice_pf *pf = vsi->back;
	struct ice_vf *vf;
	int ret = 0;

	/* validate the request */
	if (vf_id >= pf->num_alloc_vfs) {
		FUNC4(netdev, "invalid VF id: %d\n", vf_id);
		return -EINVAL;
	}

	vf = &pf->vf[vf_id];
	if (!FUNC7(ICE_VF_STATE_INIT, vf->vf_states)) {
		FUNC4(netdev, "VF %d in reset. Try again.\n", vf_id);
		return -EBUSY;
	}

	if (FUNC3(mac) || FUNC2(mac)) {
		FUNC4(netdev, "%pM not a valid unicast address\n", *mac);
		return -EINVAL;
	}

	/* copy MAC into dflt_lan_addr and trigger a VF reset. The reset
	 * flow will use the updated dflt_lan_addr and add a MAC filter
	 * using ice_add_mac. Also set pf_set_mac to indicate that the PF has
	 * set the MAC address for this VF.
	 */
	FUNC0(vf->dflt_lan_addr.addr, mac);
	vf->pf_set_mac = true;
	FUNC5(netdev,
		    "MAC on VF %d set to %pM. VF driver will be reinitialized\n",
		    vf_id, mac);

	FUNC1(vf);
	return ret;
}