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
struct virtchnl_pf_event {int /*<<< orphan*/  severity; int /*<<< orphan*/  event; int /*<<< orphan*/  member_0; } ;
struct net_device {int dummy; } ;
struct ice_vf {int link_forced; int link_up; int /*<<< orphan*/  vf_id; int /*<<< orphan*/  vf_states; } ;
struct ice_hw {TYPE_3__* port_info; } ;
struct ice_pf {int num_alloc_vfs; TYPE_4__* pdev; struct ice_hw hw; struct ice_vf* vf; } ;
struct ice_netdev_priv {TYPE_1__* vsi; } ;
struct ice_link_status {int link_info; int /*<<< orphan*/  link_speed; } ;
typedef  int /*<<< orphan*/  pfe ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {struct ice_link_status link_info; } ;
struct TYPE_7__ {TYPE_2__ phy; } ;
struct TYPE_5__ {struct ice_pf* back; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ICE_AQ_LINK_UP ; 
 int /*<<< orphan*/  ICE_VF_STATE_INIT ; 
#define  IFLA_VF_LINK_STATE_AUTO 130 
#define  IFLA_VF_LINK_STATE_DISABLE 129 
#define  IFLA_VF_LINK_STATE_ENABLE 128 
 int /*<<< orphan*/  PF_EVENT_SEVERITY_INFO ; 
 int /*<<< orphan*/  VIRTCHNL_EVENT_LINK_CHANGE ; 
 int /*<<< orphan*/  VIRTCHNL_OP_EVENT ; 
 int /*<<< orphan*/  VIRTCHNL_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_vf*,struct virtchnl_pf_event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_vf*,struct virtchnl_pf_event*,int) ; 
 struct ice_netdev_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct net_device *netdev, int vf_id, int link_state)
{
	struct ice_netdev_priv *np = FUNC4(netdev);
	struct ice_pf *pf = np->vsi->back;
	struct virtchnl_pf_event pfe = { 0 };
	struct ice_link_status *ls;
	struct ice_vf *vf;
	struct ice_hw *hw;

	if (vf_id >= pf->num_alloc_vfs) {
		FUNC0(&pf->pdev->dev, "Invalid VF Identifier %d\n", vf_id);
		return -EINVAL;
	}

	vf = &pf->vf[vf_id];
	hw = &pf->hw;
	ls = &pf->hw.port_info->phy.link_info;

	if (!FUNC5(ICE_VF_STATE_INIT, vf->vf_states)) {
		FUNC0(&pf->pdev->dev, "vf %d in reset. Try again.\n", vf_id);
		return -EBUSY;
	}

	pfe.event = VIRTCHNL_EVENT_LINK_CHANGE;
	pfe.severity = PF_EVENT_SEVERITY_INFO;

	switch (link_state) {
	case IFLA_VF_LINK_STATE_AUTO:
		vf->link_forced = false;
		vf->link_up = ls->link_info & ICE_AQ_LINK_UP;
		break;
	case IFLA_VF_LINK_STATE_ENABLE:
		vf->link_forced = true;
		vf->link_up = true;
		break;
	case IFLA_VF_LINK_STATE_DISABLE:
		vf->link_forced = true;
		vf->link_up = false;
		break;
	default:
		return -EINVAL;
	}

	if (vf->link_forced)
		FUNC3(vf, &pfe, vf->link_up);
	else
		FUNC2(vf, &pfe, ls->link_speed, vf->link_up);

	/* Notify the VF of its new link state */
	FUNC1(hw, vf->vf_id, VIRTCHNL_OP_EVENT,
			      VIRTCHNL_STATUS_SUCCESS, (u8 *)&pfe,
			      sizeof(pfe), NULL);

	return 0;
}