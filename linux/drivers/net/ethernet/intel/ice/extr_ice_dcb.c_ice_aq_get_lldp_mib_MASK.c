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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_lldp_get_mib {int type; int /*<<< orphan*/  remote_len; int /*<<< orphan*/  local_len; } ;
struct TYPE_2__ {struct ice_aqc_lldp_get_mib lldp_get_mib; } ;
struct ice_aq_desc {int /*<<< orphan*/  datalen; TYPE_1__ params; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int ICE_AQ_LLDP_BRID_TYPE_M ; 
 int ICE_AQ_LLDP_BRID_TYPE_S ; 
 int ICE_AQ_LLDP_MIB_TYPE_M ; 
 int ICE_ERR_PARAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ice_hw*,struct ice_aq_desc*,void*,int /*<<< orphan*/ ,struct ice_sq_cd*) ; 
 int /*<<< orphan*/  ice_aqc_opc_lldp_get_mib ; 
 int /*<<< orphan*/  FUNC2 (struct ice_aq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum ice_status
FUNC4(struct ice_hw *hw, u8 bridge_type, u8 mib_type, void *buf,
		    u16 buf_size, u16 *local_len, u16 *remote_len,
		    struct ice_sq_cd *cd)
{
	struct ice_aqc_lldp_get_mib *cmd;
	struct ice_aq_desc desc;
	enum ice_status status;

	cmd = &desc.params.lldp_get_mib;

	if (buf_size == 0 || !buf)
		return ICE_ERR_PARAM;

	FUNC2(&desc, ice_aqc_opc_lldp_get_mib);

	cmd->type = mib_type & ICE_AQ_LLDP_MIB_TYPE_M;
	cmd->type |= (bridge_type << ICE_AQ_LLDP_BRID_TYPE_S) &
		ICE_AQ_LLDP_BRID_TYPE_M;

	desc.datalen = FUNC0(buf_size);

	status = FUNC1(hw, &desc, buf, buf_size, cd);
	if (!status) {
		if (local_len)
			*local_len = FUNC3(cmd->local_len);
		if (remote_len)
			*remote_len = FUNC3(cmd->remote_len);
	}

	return status;
}