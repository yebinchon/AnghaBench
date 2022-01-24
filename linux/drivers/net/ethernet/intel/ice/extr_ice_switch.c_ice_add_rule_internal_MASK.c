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
typedef  size_t u8 ;
struct mutex {int dummy; } ;
struct ice_switch_info {TYPE_1__* recp_list; } ;
struct ice_hw {TYPE_2__* port_info; struct ice_switch_info* switch_info; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw_vsi_id; } ;
struct ice_fltr_info {int flag; TYPE_3__ fwd_id; int /*<<< orphan*/  src; int /*<<< orphan*/  vsi_handle; } ;
struct ice_fltr_mgmt_list_entry {struct ice_fltr_info fltr_info; } ;
struct ice_fltr_list_entry {struct ice_fltr_info fltr_info; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_5__ {int /*<<< orphan*/  lport; } ;
struct TYPE_4__ {struct mutex filt_rule_lock; } ;

/* Variables and functions */
 int ICE_ERR_PARAM ; 
 int ICE_FLTR_RX ; 
 int ICE_FLTR_TX ; 
 int FUNC0 (struct ice_hw*,struct ice_fltr_mgmt_list_entry*,struct ice_fltr_info*,struct ice_fltr_info*) ; 
 int FUNC1 (struct ice_hw*,struct ice_fltr_list_entry*) ; 
 struct ice_fltr_mgmt_list_entry* FUNC2 (struct ice_hw*,size_t,struct ice_fltr_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC6 (struct mutex*) ; 

__attribute__((used)) static enum ice_status
FUNC7(struct ice_hw *hw, u8 recp_id,
		      struct ice_fltr_list_entry *f_entry)
{
	struct ice_switch_info *sw = hw->switch_info;
	struct ice_fltr_info *new_fltr, *cur_fltr;
	struct ice_fltr_mgmt_list_entry *m_entry;
	struct mutex *rule_lock; /* Lock to protect filter rule list */
	enum ice_status status = 0;

	if (!FUNC4(hw, f_entry->fltr_info.vsi_handle))
		return ICE_ERR_PARAM;
	f_entry->fltr_info.fwd_id.hw_vsi_id =
		FUNC3(hw, f_entry->fltr_info.vsi_handle);

	rule_lock = &sw->recp_list[recp_id].filt_rule_lock;

	FUNC5(rule_lock);
	new_fltr = &f_entry->fltr_info;
	if (new_fltr->flag & ICE_FLTR_RX)
		new_fltr->src = hw->port_info->lport;
	else if (new_fltr->flag & ICE_FLTR_TX)
		new_fltr->src = f_entry->fltr_info.fwd_id.hw_vsi_id;

	m_entry = FUNC2(hw, recp_id, new_fltr);
	if (!m_entry) {
		FUNC6(rule_lock);
		return FUNC1(hw, f_entry);
	}

	cur_fltr = &m_entry->fltr_info;
	status = FUNC0(hw, m_entry, cur_fltr, new_fltr);
	FUNC6(rule_lock);

	return status;
}