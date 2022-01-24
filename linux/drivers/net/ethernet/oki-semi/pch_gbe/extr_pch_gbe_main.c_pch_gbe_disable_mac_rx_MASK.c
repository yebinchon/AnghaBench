#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pch_gbe_hw {TYPE_1__* reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  MAC_RX_EN; } ;

/* Variables and functions */
 int PCH_GBE_MRE_MAC_RX_EN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct pch_gbe_hw *hw)
{
	u32 rctl;
	/* Disables Receive MAC */
	rctl = FUNC0(&hw->reg->MAC_RX_EN);
	FUNC1((rctl & ~PCH_GBE_MRE_MAC_RX_EN), &hw->reg->MAC_RX_EN);
}