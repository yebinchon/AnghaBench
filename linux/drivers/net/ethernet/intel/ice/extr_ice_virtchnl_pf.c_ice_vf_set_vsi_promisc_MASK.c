#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ice_vsi {int /*<<< orphan*/  idx; } ;
struct ice_vf {int /*<<< orphan*/  port_vlan_id; scalar_t__ num_vlan; struct ice_pf* pf; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {struct ice_hw hw; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int FUNC0 (struct ice_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ice_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ice_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum ice_status
FUNC3(struct ice_vf *vf, struct ice_vsi *vsi, u8 promisc_m,
		       bool rm_promisc)
{
	struct ice_pf *pf = vf->pf;
	enum ice_status status = 0;
	struct ice_hw *hw;

	hw = &pf->hw;
	if (vf->num_vlan) {
		status = FUNC1(hw, vsi->idx, promisc_m,
						  rm_promisc);
	} else if (vf->port_vlan_id) {
		if (rm_promisc)
			status = FUNC0(hw, vsi->idx, promisc_m,
						       vf->port_vlan_id);
		else
			status = FUNC2(hw, vsi->idx, promisc_m,
						     vf->port_vlan_id);
	} else {
		if (rm_promisc)
			status = FUNC0(hw, vsi->idx, promisc_m,
						       0);
		else
			status = FUNC2(hw, vsi->idx, promisc_m,
						     0);
	}

	return status;
}