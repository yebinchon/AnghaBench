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
struct TYPE_2__ {int /*<<< orphan*/  tx_tasklet; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG ; 
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG_SW_RESET ; 
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ; 
 int /*<<< orphan*/  FUNC0 (struct mt7615_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7615_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mt7615_dev *dev)
{
	FUNC0(dev, MT_WPDMA_GLO_CFG,
		   MT_WPDMA_GLO_CFG_TX_DMA_EN |
		   MT_WPDMA_GLO_CFG_RX_DMA_EN);
	FUNC2(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_SW_RESET);

	FUNC3(&dev->mt76.tx_tasklet);
	FUNC1(&dev->mt76);
}