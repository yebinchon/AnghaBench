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
struct mt7603_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MT_INT_RX_DONE_ALL ; 
 int MT_INT_TX_DONE_ALL ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG_DMA_BURST_SIZE ; 
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ; 
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ; 
 int MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE ; 
 int /*<<< orphan*/  FUNC1 (struct mt7603_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7603_dev*) ; 

void FUNC6(struct mt7603_dev *dev)
{
	FUNC2(dev);

	FUNC5(dev);
	FUNC4(50, 100);

	FUNC3(dev, MT_WPDMA_GLO_CFG,
		 (MT_WPDMA_GLO_CFG_TX_DMA_EN |
		  MT_WPDMA_GLO_CFG_RX_DMA_EN |
		  FUNC0(MT_WPDMA_GLO_CFG_DMA_BURST_SIZE, 3) |
		  MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE));

	FUNC1(dev, MT_INT_RX_DONE_ALL | MT_INT_TX_DONE_ALL);
}