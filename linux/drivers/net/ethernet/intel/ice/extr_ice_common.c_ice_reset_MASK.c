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
typedef  int /*<<< orphan*/  u32 ;
struct ice_hw {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef  enum ice_reset_req { ____Placeholder_ice_reset_req } ice_reset_req ;

/* Variables and functions */
 int /*<<< orphan*/  GLGEN_RTRIG ; 
 int /*<<< orphan*/  GLGEN_RTRIG_CORER_M ; 
 int /*<<< orphan*/  GLGEN_RTRIG_GLOBR_M ; 
 int /*<<< orphan*/  ICE_DBG_INIT ; 
 int ICE_ERR_PARAM ; 
#define  ICE_RESET_CORER 130 
#define  ICE_RESET_GLOBR 129 
#define  ICE_RESET_PFR 128 
 int FUNC0 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_hw*) ; 
 int FUNC3 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

enum ice_status FUNC6(struct ice_hw *hw, enum ice_reset_req req)
{
	u32 val = 0;

	switch (req) {
	case ICE_RESET_PFR:
		return FUNC3(hw);
	case ICE_RESET_CORER:
		FUNC1(hw, ICE_DBG_INIT, "CoreR requested\n");
		val = GLGEN_RTRIG_CORER_M;
		break;
	case ICE_RESET_GLOBR:
		FUNC1(hw, ICE_DBG_INIT, "GlobalR requested\n");
		val = GLGEN_RTRIG_GLOBR_M;
		break;
	default:
		return ICE_ERR_PARAM;
	}

	val |= FUNC4(hw, GLGEN_RTRIG);
	FUNC5(hw, GLGEN_RTRIG, val);
	FUNC2(hw);

	/* wait for the FW to be ready */
	return FUNC0(hw);
}