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
struct ksz_hw {int /*<<< orphan*/ * address; scalar_t__ io; } ;

/* Variables and functions */
 int ADDITIONAL_ENTRIES ; 
 int ADD_ADDR_INCR ; 
 scalar_t__ KS_ADD_ADDR_0_HI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ksz_hw *hw)
{
	int i;

	for (i = 0; i < ADDITIONAL_ENTRIES; i++) {
		if (FUNC0(hw->address[i]))
			FUNC2(0, hw->io + ADD_ADDR_INCR * i +
				KS_ADD_ADDR_0_HI);
		else
			FUNC1(hw, i, hw->address[i]);
	}
}