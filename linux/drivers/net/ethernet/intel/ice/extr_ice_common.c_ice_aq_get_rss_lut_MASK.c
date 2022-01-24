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
typedef  int /*<<< orphan*/  u16 ;
struct ice_hw {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int ICE_ERR_PARAM ; 
 int FUNC0 (struct ice_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_hw*,int /*<<< orphan*/ ) ; 

enum ice_status
FUNC3(struct ice_hw *hw, u16 vsi_handle, u8 lut_type,
		   u8 *lut, u16 lut_size)
{
	if (!FUNC2(hw, vsi_handle) || !lut)
		return ICE_ERR_PARAM;

	return FUNC0(hw, FUNC1(hw, vsi_handle),
					lut_type, lut, lut_size, 0, false);
}