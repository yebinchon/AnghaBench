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
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FW_PHY_TOKEN_DELAY ; 
 int FW_PHY_TOKEN_RETRIES ; 
 scalar_t__ IXGBE_ERR_TOKEN_RETRY ; 
 int IXGBE_GSSR_TOKEN_SM ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int) ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC4(struct ixgbe_hw *hw, u32 mask)
{
	u32 hmask = mask & ~IXGBE_GSSR_TOKEN_SM;
	int retries = FW_PHY_TOKEN_RETRIES;
	s32 status;

	while (--retries) {
		status = 0;
		if (hmask)
			status = FUNC0(hw, hmask);
		if (status)
			return status;
		if (!(mask & IXGBE_GSSR_TOKEN_SM))
			return 0;

		status = FUNC1(hw);
		if (!status)
			return 0;
		if (hmask)
			FUNC2(hw, hmask);
		if (status != IXGBE_ERR_TOKEN_RETRY)
			return status;
		FUNC3(FW_PHY_TOKEN_DELAY);
	}

	return status;
}