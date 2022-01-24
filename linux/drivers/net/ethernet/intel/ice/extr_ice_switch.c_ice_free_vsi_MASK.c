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
typedef  int /*<<< orphan*/  u16 ;
struct ice_vsi_ctx {int /*<<< orphan*/  vsi_num; } ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int ICE_ERR_PARAM ; 
 int FUNC0 (struct ice_hw*,struct ice_vsi_ctx*,int,struct ice_sq_cd*) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ice_hw*,int /*<<< orphan*/ ) ; 

enum ice_status
FUNC4(struct ice_hw *hw, u16 vsi_handle, struct ice_vsi_ctx *vsi_ctx,
	     bool keep_vsi_alloc, struct ice_sq_cd *cd)
{
	enum ice_status status;

	if (!FUNC3(hw, vsi_handle))
		return ICE_ERR_PARAM;
	vsi_ctx->vsi_num = FUNC2(hw, vsi_handle);
	status = FUNC0(hw, vsi_ctx, keep_vsi_alloc, cd);
	if (!status)
		FUNC1(hw, vsi_handle);
	return status;
}