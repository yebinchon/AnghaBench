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
struct ice_hw {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_RES_READ ; 
 int FUNC0 (struct ice_hw*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ice_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_hw*) ; 

__attribute__((used)) static enum ice_status
FUNC3(struct ice_hw *hw, u16 offset, u16 *data)
{
	enum ice_status status;

	status = FUNC0(hw, ICE_RES_READ);
	if (!status) {
		status = FUNC1(hw, offset, data);
		FUNC2(hw);
	}

	return status;
}