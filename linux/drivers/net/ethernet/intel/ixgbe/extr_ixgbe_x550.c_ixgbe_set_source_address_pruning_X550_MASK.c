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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ixgbe_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_PFFLPH ; 
 int /*<<< orphan*/  IXGBE_PFFLPL ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ixgbe_hw *hw,
						  bool enable,
						  unsigned int pool)
{
	u64 pfflp;

	/* max rx pool is 63 */
	if (pool > 63)
		return;

	pfflp = (u64)FUNC0(hw, IXGBE_PFFLPL);
	pfflp |= (u64)FUNC0(hw, IXGBE_PFFLPH) << 32;

	if (enable)
		pfflp |= (1ULL << pool);
	else
		pfflp &= ~(1ULL << pool);

	FUNC1(hw, IXGBE_PFFLPL, (u32)pfflp);
	FUNC1(hw, IXGBE_PFFLPH, (u32)(pfflp >> 32));
}