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
struct g12a_ephy_pll {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ ETH_PLL_CTL0 ; 
 scalar_t__ ETH_PLL_CTL1 ; 
 scalar_t__ ETH_PLL_CTL2 ; 
 scalar_t__ ETH_PLL_CTL3 ; 
 scalar_t__ ETH_PLL_CTL4 ; 
 scalar_t__ ETH_PLL_CTL5 ; 
 scalar_t__ ETH_PLL_CTL6 ; 
 scalar_t__ ETH_PLL_CTL7 ; 
 struct g12a_ephy_pll* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct clk_hw *hw)
{
	struct g12a_ephy_pll *pll = FUNC0(hw);

	/* Apply PLL HW settings */
	FUNC1(0x29c0040a, pll->base + ETH_PLL_CTL0);
	FUNC1(0x927e0000, pll->base + ETH_PLL_CTL1);
	FUNC1(0xac5f49e5, pll->base + ETH_PLL_CTL2);
	FUNC1(0x00000000, pll->base + ETH_PLL_CTL3);
	FUNC1(0x00000000, pll->base + ETH_PLL_CTL4);
	FUNC1(0x20200000, pll->base + ETH_PLL_CTL5);
	FUNC1(0x0000c002, pll->base + ETH_PLL_CTL6);
	FUNC1(0x00000023, pll->base + ETH_PLL_CTL7);
}