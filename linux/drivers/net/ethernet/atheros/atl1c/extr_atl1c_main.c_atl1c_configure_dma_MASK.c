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
struct atl1c_hw {int /*<<< orphan*/  dmar_block; } ;
struct atl1c_adapter {struct atl1c_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atl1c_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMA_CTRL_RDLY_CNT ; 
 int /*<<< orphan*/  DMA_CTRL_RDLY_CNT_DEF ; 
 int /*<<< orphan*/  DMA_CTRL_RORDER_MODE ; 
 int /*<<< orphan*/  DMA_CTRL_RORDER_MODE_OUT ; 
 int /*<<< orphan*/  DMA_CTRL_RREQ_BLEN ; 
 int DMA_CTRL_RREQ_PRI_DATA ; 
 int /*<<< orphan*/  DMA_CTRL_WDLY_CNT ; 
 int /*<<< orphan*/  DMA_CTRL_WDLY_CNT_DEF ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_DMA_CTRL ; 

__attribute__((used)) static void FUNC2(struct atl1c_adapter *adapter)
{
	struct atl1c_hw *hw = &adapter->hw;
	u32 dma_ctrl_data;

	dma_ctrl_data = FUNC1(DMA_CTRL_RORDER_MODE, DMA_CTRL_RORDER_MODE_OUT) |
		DMA_CTRL_RREQ_PRI_DATA |
		FUNC1(DMA_CTRL_RREQ_BLEN, hw->dmar_block) |
		FUNC1(DMA_CTRL_WDLY_CNT, DMA_CTRL_WDLY_CNT_DEF) |
		FUNC1(DMA_CTRL_RDLY_CNT, DMA_CTRL_RDLY_CNT_DEF);

	FUNC0(hw, REG_DMA_CTRL, dma_ctrl_data);
}