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
typedef  int u32 ;
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int IXGBE_FWSM_FW_NVM_RECOVERY_MODE ; 
 int FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct ixgbe_hw *hw)
{
	u32 fwsm;

	fwsm = FUNC1(hw, FUNC0(hw));
	return !!(fwsm & IXGBE_FWSM_FW_NVM_RECOVERY_MODE);
}