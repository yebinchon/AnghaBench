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
typedef  int u32 ;
struct fm10k_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FM10K_DMA_CTRL2 ; 
 int FM10K_DMA_CTRL2_SWITCH_READY ; 
 int /*<<< orphan*/  FUNC0 (struct fm10k_hw*,int*) ; 
 int FUNC1 (struct fm10k_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC2(struct fm10k_hw *hw, bool *switch_ready)
{
	u32 dma_ctrl2;

	/* verify the switch is ready for interaction */
	dma_ctrl2 = FUNC1(hw, FM10K_DMA_CTRL2);
	if (!(dma_ctrl2 & FM10K_DMA_CTRL2_SWITCH_READY))
		return 0;

	/* retrieve generic host state info */
	return FUNC0(hw, switch_ready);
}