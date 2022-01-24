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
typedef  scalar_t__ u16 ;
struct ice_vsi_ctx {scalar_t__ vsi_num; } ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ICE_ERR_NO_MEMORY ; 
 int ICE_ERR_PARAM ; 
 scalar_t__ ICE_MAX_VSI ; 
 struct ice_vsi_ctx* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ice_hw*,struct ice_vsi_ctx*,struct ice_sq_cd*) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_hw*,struct ice_vsi_ctx*,int,struct ice_sq_cd*) ; 
 struct ice_vsi_ctx* FUNC3 (struct ice_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_hw*,scalar_t__,struct ice_vsi_ctx*) ; 

enum ice_status
FUNC6(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
	    struct ice_sq_cd *cd)
{
	struct ice_vsi_ctx *tmp_vsi_ctx;
	enum ice_status status;

	if (vsi_handle >= ICE_MAX_VSI)
		return ICE_ERR_PARAM;
	status = FUNC1(hw, vsi_ctx, cd);
	if (status)
		return status;
	tmp_vsi_ctx = FUNC3(hw, vsi_handle);
	if (!tmp_vsi_ctx) {
		/* Create a new VSI context */
		tmp_vsi_ctx = FUNC0(FUNC4(hw),
					   sizeof(*tmp_vsi_ctx), GFP_KERNEL);
		if (!tmp_vsi_ctx) {
			FUNC2(hw, vsi_ctx, false, cd);
			return ICE_ERR_NO_MEMORY;
		}
		*tmp_vsi_ctx = *vsi_ctx;
		FUNC5(hw, vsi_handle, tmp_vsi_ctx);
	} else {
		/* update with new HW VSI num */
		if (tmp_vsi_ctx->vsi_num != vsi_ctx->vsi_num)
			tmp_vsi_ctx->vsi_num = vsi_ctx->vsi_num;
	}

	return 0;
}