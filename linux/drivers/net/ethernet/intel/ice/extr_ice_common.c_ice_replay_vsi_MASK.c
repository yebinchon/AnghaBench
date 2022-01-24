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
struct ice_hw {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int ICE_ERR_PARAM ; 
 scalar_t__ ICE_MAIN_VSI_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (struct ice_hw*,scalar_t__) ; 
 int FUNC1 (struct ice_hw*) ; 
 int FUNC2 (struct ice_hw*,scalar_t__) ; 

enum ice_status FUNC3(struct ice_hw *hw, u16 vsi_handle)
{
	enum ice_status status;

	if (!FUNC0(hw, vsi_handle))
		return ICE_ERR_PARAM;

	/* Replay pre-initialization if there is any */
	if (vsi_handle == ICE_MAIN_VSI_HANDLE) {
		status = FUNC1(hw);
		if (status)
			return status;
	}

	/* Replay per VSI all filters */
	status = FUNC2(hw, vsi_handle);
	return status;
}