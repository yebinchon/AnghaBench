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
struct mt76x02_dev {int /*<<< orphan*/  mt76; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL_ENABLE_TX ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG_DMA_BURST_SIZE ; 
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ; 
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct mt76x02_dev *dev)
{
	u32 val;

	FUNC3(dev, MT_MAC_SYS_CTRL, MT_MAC_SYS_CTRL_ENABLE_TX);
	FUNC4(&dev->mt76, 1000);
	FUNC5(50, 100);

	val = FUNC0(MT_WPDMA_GLO_CFG_DMA_BURST_SIZE, 3) |
	      MT_WPDMA_GLO_CFG_TX_DMA_EN |
	      MT_WPDMA_GLO_CFG_RX_DMA_EN;
	FUNC2(dev, MT_WPDMA_GLO_CFG, val);
	FUNC1(dev, MT_WPDMA_GLO_CFG,
		   MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE);
}