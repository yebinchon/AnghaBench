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
typedef  scalar_t__ u8 ;
struct ksz_hw {scalar_t__ enabled; int /*<<< orphan*/  rx_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_RX_PROMISCUOUS ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ksz_hw*) ; 

__attribute__((used)) static void FUNC2(struct ksz_hw *hw, u8 prom)
{
	/* Stop receiving for reconfiguration. */
	FUNC1(hw);

	if (prom)
		hw->rx_cfg |= DMA_RX_PROMISCUOUS;
	else
		hw->rx_cfg &= ~DMA_RX_PROMISCUOUS;

	if (hw->enabled)
		FUNC0(hw);
}