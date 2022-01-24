#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct pch_gbe_hw {TYPE_2__ mac; TYPE_1__* reg; } ;
struct TYPE_3__ {int /*<<< orphan*/  RESET; int /*<<< orphan*/  MODE; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCH_GBE_ALL_RST ; 
 int /*<<< orphan*/  PCH_GBE_MODE_GMII_ETHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pch_gbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pch_gbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pch_gbe_hw *hw)
{
	/* Read the MAC address. and store to the private data */
	FUNC2(hw);
	FUNC0(PCH_GBE_ALL_RST, &hw->reg->RESET);
	FUNC0(PCH_GBE_MODE_GMII_ETHER, &hw->reg->MODE);
	FUNC3(&hw->reg->RESET, PCH_GBE_ALL_RST);
	/* Setup the receive addresses */
	FUNC1(hw, hw->mac.addr, 0);
	return;
}