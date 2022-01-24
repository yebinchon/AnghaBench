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
typedef  int /*<<< orphan*/  u8 ;
struct ksz_hw {int addr_list_size; scalar_t__ io; int /*<<< orphan*/ * address; } ;

/* Variables and functions */
 int ADD_ADDR_INCR ; 
 scalar_t__ KS_ADD_ADDR_0_HI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct ksz_hw *hw, u8 *mac_addr)
{
	int i;

	for (i = 0; i < hw->addr_list_size; i++) {
		if (FUNC1(hw->address[i], mac_addr)) {
			FUNC0(hw->address[i]);
			FUNC2(0, hw->io + ADD_ADDR_INCR * i +
				KS_ADD_ADDR_0_HI);
			return 0;
		}
	}
	return -1;
}