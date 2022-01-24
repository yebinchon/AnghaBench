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
struct fm10k_hw {int /*<<< orphan*/  mbx; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fm10k_hw*) ; 
 int /*<<< orphan*/  fm10k_msg_data_pf ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC2(struct fm10k_hw *hw)
{
	FUNC0(hw);

	return FUNC1(hw, &hw->mbx, fm10k_msg_data_pf);
}