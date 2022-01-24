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
struct ksz_hw {scalar_t__ id; int /*<<< orphan*/ * override_addr; int /*<<< orphan*/ * perm_addr; int /*<<< orphan*/  mac_override; scalar_t__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/ * DEFAULT_MAC_ADDRESS ; 
 int ETH_ALEN ; 
 scalar_t__ KS884X_ADDR_0_OFFSET ; 
 size_t FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ksz_hw *hw)
{
	int i;

	for (i = 0; i < ETH_ALEN; i++)
		hw->perm_addr[FUNC0(i)] = FUNC4(hw->io +
			KS884X_ADDR_0_OFFSET + i);

	if (!hw->mac_override) {
		FUNC3(hw->override_addr, hw->perm_addr, ETH_ALEN);
		if (FUNC1(hw->override_addr)) {
			FUNC3(hw->perm_addr, DEFAULT_MAC_ADDRESS, ETH_ALEN);
			FUNC3(hw->override_addr, DEFAULT_MAC_ADDRESS,
			       ETH_ALEN);
			hw->override_addr[5] += hw->id;
			FUNC2(hw);
		}
	}
}