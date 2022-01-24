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
struct atl2_hw {int* perm_mac_addr; int /*<<< orphan*/  mac_addr; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC0 (struct atl2_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC2(struct atl2_hw *hw)
{
	if (FUNC0(hw)) {
		/* for test */
		/* FIXME: shouldn't we use eth_random_addr() here? */
		hw->perm_mac_addr[0] = 0x00;
		hw->perm_mac_addr[1] = 0x13;
		hw->perm_mac_addr[2] = 0x74;
		hw->perm_mac_addr[3] = 0x00;
		hw->perm_mac_addr[4] = 0x5c;
		hw->perm_mac_addr[5] = 0x38;
	}

	FUNC1(hw->mac_addr, hw->perm_mac_addr, ETH_ALEN);

	return 0;
}