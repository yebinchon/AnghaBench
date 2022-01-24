#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  irqmask; } ;
struct TYPE_4__ {int beacon_int; int /*<<< orphan*/  hw; int /*<<< orphan*/ * napi; int /*<<< orphan*/  pre_tbtt_tasklet; int /*<<< orphan*/  tx_napi; int /*<<< orphan*/  tx_tasklet; int /*<<< orphan*/  mutex; int /*<<< orphan*/  state; int /*<<< orphan*/  q_rx; int /*<<< orphan*/  q_tx; TYPE_1__ mmio; } ;
struct mt7603_dev {scalar_t__ cur_reset_cause; TYPE_2__ mt76; scalar_t__* reset_cause; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT76_RESET ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG_FORCE_TX_EOF ; 
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ; 
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ; 
 int MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE ; 
 scalar_t__ RESET_CAUSE_BEACON_STUCK ; 
 size_t RESET_CAUSE_RESET_FAILED ; 
 scalar_t__ RESET_CAUSE_RX_PSE_BUSY ; 
 scalar_t__ RESET_CAUSE_TX_HANG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mt7603_dev*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mt7603_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int,int) ; 

__attribute__((used)) static void FUNC26(struct mt7603_dev *dev)
{
	int beacon_int = dev->mt76.beacon_int;
	u32 mask = dev->mt76.mmio.irqmask;
	int i;

	FUNC2(dev->mt76.hw);
	FUNC22(MT76_RESET, &dev->mt76.state);

	/* lock/unlock all queues to ensure that no tx is pending */
	FUNC16(&dev->mt76);

	FUNC23(&dev->mt76.tx_tasklet);
	FUNC23(&dev->mt76.pre_tbtt_tasklet);
	FUNC19(&dev->mt76.napi[0]);
	FUNC19(&dev->mt76.napi[1]);
	FUNC19(&dev->mt76.tx_napi);

	FUNC17(&dev->mt76.mutex);

	FUNC4(dev, -1, 0);

	if (dev->reset_cause[RESET_CAUSE_RESET_FAILED] ||
	    dev->cur_reset_cause == RESET_CAUSE_RX_PSE_BUSY ||
	    dev->cur_reset_cause == RESET_CAUSE_BEACON_STUCK ||
	    dev->cur_reset_cause == RESET_CAUSE_TX_HANG)
		FUNC11(dev);

	if (dev->reset_cause[RESET_CAUSE_RESET_FAILED])
		goto skip_dma_reset;

	FUNC9(dev);

	FUNC12(dev, MT_WPDMA_GLO_CFG,
		   MT_WPDMA_GLO_CFG_RX_DMA_EN | MT_WPDMA_GLO_CFG_TX_DMA_EN |
		   MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE);
	FUNC25(1000, 2000);

	FUNC6(dev, mask);

	FUNC15(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_FORCE_TX_EOF);

	FUNC10(dev);

	for (i = 0; i < FUNC0(dev->mt76.q_tx); i++)
		FUNC14(dev, i, true);

	for (i = 0; i < FUNC0(dev->mt76.q_rx); i++)
		FUNC13(dev, i);

	FUNC5(dev);

	FUNC8(dev);

	FUNC7(dev, mask);

skip_dma_reset:
	FUNC1(MT76_RESET, &dev->mt76.state);
	FUNC18(&dev->mt76.mutex);

	FUNC24(&dev->mt76.tx_tasklet);
	FUNC20(&dev->mt76.tx_napi);
	FUNC21(&dev->mt76.tx_napi);

	FUNC24(&dev->mt76.pre_tbtt_tasklet);
	FUNC4(dev, -1, beacon_int);

	FUNC20(&dev->mt76.napi[0]);
	FUNC21(&dev->mt76.napi[0]);

	FUNC20(&dev->mt76.napi[1]);
	FUNC21(&dev->mt76.napi[1]);

	FUNC3(dev->mt76.hw);
	FUNC16(&dev->mt76);
}