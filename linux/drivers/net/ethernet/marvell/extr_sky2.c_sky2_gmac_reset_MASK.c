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
typedef  int u16 ;
struct sky2_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GMAC_IRQ_MSK ; 
 int /*<<< orphan*/  GM_MC_ADDR_H1 ; 
 int /*<<< orphan*/  GM_MC_ADDR_H2 ; 
 int /*<<< orphan*/  GM_MC_ADDR_H3 ; 
 int /*<<< orphan*/  GM_MC_ADDR_H4 ; 
 int GM_RXCR_MCF_ENA ; 
 int GM_RXCR_UCF_ENA ; 
 int /*<<< orphan*/  GM_RX_CTRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_hw*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sky2_hw *hw, unsigned port)
{
	u16 reg;

	/* disable all GMAC IRQ's */
	FUNC3(hw, FUNC0(port, GMAC_IRQ_MSK), 0);

	FUNC2(hw, port, GM_MC_ADDR_H1, 0);	/* clear MC hash */
	FUNC2(hw, port, GM_MC_ADDR_H2, 0);
	FUNC2(hw, port, GM_MC_ADDR_H3, 0);
	FUNC2(hw, port, GM_MC_ADDR_H4, 0);

	reg = FUNC1(hw, port, GM_RX_CTRL);
	reg |= GM_RXCR_UCF_ENA | GM_RXCR_MCF_ENA;
	FUNC2(hw, port, GM_RX_CTRL, reg);
}