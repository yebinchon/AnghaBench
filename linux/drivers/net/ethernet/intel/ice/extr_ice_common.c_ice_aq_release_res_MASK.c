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
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_req_res {int /*<<< orphan*/  res_number; int /*<<< orphan*/  res_id; } ;
struct TYPE_2__ {struct ice_aqc_req_res res_owner; } ;
struct ice_aq_desc {TYPE_1__ params; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef  enum ice_aq_res_ids { ____Placeholder_ice_aq_res_ids } ice_aq_res_ids ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ice_hw*,struct ice_aq_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ice_sq_cd*) ; 
 int /*<<< orphan*/  ice_aqc_opc_release_res ; 
 int /*<<< orphan*/  FUNC3 (struct ice_aq_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum ice_status
FUNC4(struct ice_hw *hw, enum ice_aq_res_ids res, u8 sdp_number,
		   struct ice_sq_cd *cd)
{
	struct ice_aqc_req_res *cmd;
	struct ice_aq_desc desc;

	cmd = &desc.params.res_owner;

	FUNC3(&desc, ice_aqc_opc_release_res);

	cmd->res_id = FUNC0(res);
	cmd->res_number = FUNC1(sdp_number);

	return FUNC2(hw, &desc, NULL, 0, cd);
}