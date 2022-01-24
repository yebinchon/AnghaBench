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
struct ksz_hw {int overrides; } ;

/* Variables and functions */
 int FAST_AGING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*,int) ; 

__attribute__((used)) static inline void FUNC2(struct ksz_hw *hw)
{
	if (!(hw->overrides & FAST_AGING)) {
		FUNC1(hw, 1);
		FUNC0(1);
		FUNC1(hw, 0);
	}
}