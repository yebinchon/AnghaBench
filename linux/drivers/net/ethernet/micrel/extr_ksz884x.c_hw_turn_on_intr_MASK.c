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
struct ksz_hw {int /*<<< orphan*/  intr_mask; int /*<<< orphan*/  intr_blocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ksz_hw *hw, u32 bit)
{
	hw->intr_mask |= bit;

	if (!hw->intr_blocked)
		FUNC0(hw, hw->intr_mask);
}