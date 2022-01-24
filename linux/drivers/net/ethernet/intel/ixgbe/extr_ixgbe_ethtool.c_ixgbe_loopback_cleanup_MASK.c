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
struct ixgbe_adapter {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_HLREG0 ; 
 int /*<<< orphan*/  IXGBE_HLREG0_LPBK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ixgbe_adapter *adapter)
{
	u32 reg_data;

	reg_data = FUNC0(&adapter->hw, IXGBE_HLREG0);
	reg_data &= ~IXGBE_HLREG0_LPBK;
	FUNC1(&adapter->hw, IXGBE_HLREG0, reg_data);
}