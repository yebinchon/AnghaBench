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
struct ksz_hw {int /*<<< orphan*/  intr_mask; scalar_t__ intr_blocked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct ksz_hw *hw)
{
	hw->intr_blocked = 0;
	FUNC0(hw, hw->intr_mask);
}