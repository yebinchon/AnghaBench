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
struct ice_hw {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef  enum ice_aq_res_access_type { ____Placeholder_ice_aq_res_access_type } ice_aq_res_access_type ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_DBG_PKG ; 
 int ICE_ERR_AQ_NO_WORK ; 
 int /*<<< orphan*/  ICE_GLOBAL_CFG_LOCK_RES_ID ; 
 int /*<<< orphan*/  ICE_GLOBAL_CFG_LOCK_TIMEOUT ; 
 int FUNC0 (struct ice_hw*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ice_global_cfg_lock_sw ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum ice_status
FUNC3(struct ice_hw *hw,
			    enum ice_aq_res_access_type access)
{
	enum ice_status status;

	status = FUNC0(hw, ICE_GLOBAL_CFG_LOCK_RES_ID, access,
				 ICE_GLOBAL_CFG_LOCK_TIMEOUT);

	if (!status)
		FUNC2(&ice_global_cfg_lock_sw);
	else if (status == ICE_ERR_AQ_NO_WORK)
		FUNC1(hw, ICE_DBG_PKG,
			  "Global config lock: No work to do\n");

	return status;
}