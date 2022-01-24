#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  irqmask; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw; int /*<<< orphan*/ * napi; int /*<<< orphan*/  pre_tbtt_tasklet; int /*<<< orphan*/  tx_napi; int /*<<< orphan*/  tx_tasklet; int /*<<< orphan*/  state; int /*<<< orphan*/  mutex; scalar_t__ beacon_mask; int /*<<< orphan*/ * q_rx; int /*<<< orphan*/ * q_tx; TYPE_2__* mcu_ops; TYPE_1__ mmio; } ;
struct mt76x02_dev {TYPE_3__ mt76; scalar_t__ ed_monitor; } ;
struct TYPE_5__ {int mcu_restart; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MT76_RESET ; 
 int MT_BEACON_TIME_CFG ; 
 int MT_BEACON_TIME_CFG_BEACON_TX ; 
 int MT_BEACON_TIME_CFG_TBTT_EN ; 
 int /*<<< orphan*/  MT_INT_SOURCE_CSR ; 
 int /*<<< orphan*/  MT_MAC_SYS_CTRL ; 
 int MT_TXOP_CTRL_CFG ; 
 int MT_TXOP_ED_CCA_EN ; 
 int MT_WPDMA_GLO_CFG ; 
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ; 
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ; 
 int /*<<< orphan*/  Q_SELECT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int,int) ; 

__attribute__((used)) static void FUNC26(struct mt76x02_dev *dev)
{
	u32 mask = dev->mt76.mmio.irqmask;
	bool restart = dev->mt76.mcu_ops->mcu_restart;
	int i;

	FUNC3(dev->mt76.hw);
	FUNC22(MT76_RESET, &dev->mt76.state);

	FUNC23(&dev->mt76.pre_tbtt_tasklet);
	FUNC23(&dev->mt76.tx_tasklet);
	FUNC19(&dev->mt76.tx_napi);

	for (i = 0; i < FUNC0(dev->mt76.napi); i++)
		FUNC19(&dev->mt76.napi[i]);

	FUNC17(&dev->mt76.mutex);

	if (restart)
		FUNC16(dev);

	if (dev->mt76.beacon_mask)
		FUNC5(dev, MT_BEACON_TIME_CFG,
			   MT_BEACON_TIME_CFG_BEACON_TX |
			   MT_BEACON_TIME_CFG_TBTT_EN);

	FUNC12(dev, mask);

	/* perform device reset */
	FUNC5(dev, MT_TXOP_CTRL_CFG, MT_TXOP_ED_CCA_EN);
	FUNC11(dev, MT_MAC_SYS_CTRL, 0);
	FUNC5(dev, MT_WPDMA_GLO_CFG,
		   MT_WPDMA_GLO_CFG_TX_DMA_EN | MT_WPDMA_GLO_CFG_RX_DMA_EN);
	FUNC25(5000, 10000);
	FUNC11(dev, MT_INT_SOURCE_CSR, 0xffffffff);

	/* let fw reset DMA */
	FUNC9(dev, 0x734, 0x3);

	if (restart)
		FUNC6(dev);

	for (i = 0; i < FUNC0(dev->mt76.q_tx); i++)
		FUNC8(dev, i, true);

	for (i = 0; i < FUNC0(dev->mt76.q_rx); i++)
		FUNC7(dev, i);

	FUNC14(dev);

	if (dev->ed_monitor)
		FUNC9(dev, MT_TXOP_CTRL_CFG, MT_TXOP_ED_CCA_EN);

	if (dev->mt76.beacon_mask && !restart)
		FUNC9(dev, MT_BEACON_TIME_CFG,
			 MT_BEACON_TIME_CFG_BEACON_TX |
			 MT_BEACON_TIME_CFG_TBTT_EN);

	FUNC13(dev, mask);

	FUNC18(&dev->mt76.mutex);

	FUNC1(MT76_RESET, &dev->mt76.state);

	FUNC24(&dev->mt76.tx_tasklet);
	FUNC20(&dev->mt76.tx_napi);
	FUNC21(&dev->mt76.tx_napi);

	FUNC24(&dev->mt76.pre_tbtt_tasklet);

	for (i = 0; i < FUNC0(dev->mt76.napi); i++) {
		FUNC20(&dev->mt76.napi[i]);
		FUNC21(&dev->mt76.napi[i]);
	}

	if (restart) {
		FUNC15(dev, Q_SELECT, 1);
		FUNC2(dev->mt76.hw);
	} else {
		FUNC4(dev->mt76.hw);
		FUNC10(&dev->mt76);
	}
}