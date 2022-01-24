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
struct TYPE_2__ {int /*<<< orphan*/  tx_napi; int /*<<< orphan*/  napi_dev; int /*<<< orphan*/ * q_rx; int /*<<< orphan*/ * q_tx; } ;
struct mt7615_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  MT7615_RX_MCU_RING_SIZE ; 
 int /*<<< orphan*/  MT7615_RX_RING_SIZE ; 
 int /*<<< orphan*/  MT7615_TXQ_FWDL ; 
 int /*<<< orphan*/  MT7615_TXQ_MCU ; 
 int /*<<< orphan*/  MT7615_TX_FWDL_RING_SIZE ; 
 int /*<<< orphan*/  MT7615_TX_MCU_RING_SIZE ; 
 int /*<<< orphan*/  MT7615_TX_RING_SIZE ; 
 int MT_DELAY_INT_CFG ; 
 int MT_INT_RX_DONE_ALL ; 
 int MT_INT_TX_DONE_ALL ; 
 size_t MT_RXQ_MAIN ; 
 size_t MT_RXQ_MCU ; 
 int /*<<< orphan*/  MT_RX_BUF_SIZE ; 
 int /*<<< orphan*/  MT_RX_RING_BASE ; 
 size_t MT_TXQ_FWDL ; 
 size_t MT_TXQ_MCU ; 
 int MT_WPDMA_ABT_CFG ; 
 int MT_WPDMA_ABT_CFG1 ; 
 int MT_WPDMA_GLO_CFG ; 
 int MT_WPDMA_GLO_CFG1 ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG_DMA_BURST_SIZE ; 
 int MT_WPDMA_GLO_CFG_FIFO_LITTLE_ENDIAN ; 
 int MT_WPDMA_GLO_CFG_FIRST_TOKEN_ONLY ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG_MULTI_DMA_EN ; 
 int MT_WPDMA_GLO_CFG_OMIT_TX_INFO ; 
 int MT_WPDMA_GLO_CFG_RX_DMA_BUSY ; 
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG_TX_BT_SIZE_BIT0 ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG_TX_BT_SIZE_BIT21 ; 
 int MT_WPDMA_GLO_CFG_TX_DMA_BUSY ; 
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ; 
 int MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE ; 
 int MT_WPDMA_RST_IDX ; 
 int MT_WPDMA_RX_PRE_CFG ; 
 int MT_WPDMA_TX_PRE_CFG ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int FUNC1 (struct mt7615_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mt7615_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7615_dev*,int) ; 
 int /*<<< orphan*/  mt7615_poll_tx ; 
 int /*<<< orphan*/  FUNC4 (struct mt7615_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct mt7615_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7615_dev*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct mt7615_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7615_dev*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mt7615_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mt7615_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC14(struct mt7615_dev *dev)
{
	int ret;

	FUNC5(&dev->mt76);

	FUNC11(dev, MT_WPDMA_GLO_CFG,
		MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE |
		MT_WPDMA_GLO_CFG_FIFO_LITTLE_ENDIAN |
		MT_WPDMA_GLO_CFG_FIRST_TOKEN_ONLY |
		MT_WPDMA_GLO_CFG_OMIT_TX_INFO);

	FUNC9(dev, MT_WPDMA_GLO_CFG,
		       MT_WPDMA_GLO_CFG_TX_BT_SIZE_BIT0, 0x1);

	FUNC9(dev, MT_WPDMA_GLO_CFG,
		       MT_WPDMA_GLO_CFG_TX_BT_SIZE_BIT21, 0x1);

	FUNC9(dev, MT_WPDMA_GLO_CFG,
		       MT_WPDMA_GLO_CFG_DMA_BURST_SIZE, 0x3);

	FUNC9(dev, MT_WPDMA_GLO_CFG,
		       MT_WPDMA_GLO_CFG_MULTI_DMA_EN, 0x3);

	FUNC11(dev, MT_WPDMA_GLO_CFG1, 0x1);
	FUNC11(dev, MT_WPDMA_TX_PRE_CFG, 0xf0000);
	FUNC11(dev, MT_WPDMA_RX_PRE_CFG, 0xf7f0000);
	FUNC11(dev, MT_WPDMA_ABT_CFG, 0x4000026);
	FUNC11(dev, MT_WPDMA_ABT_CFG1, 0x18811881);
	FUNC10(dev, 0x7158, FUNC0(16));
	FUNC4(dev, 0x7000, FUNC0(23));
	FUNC11(dev, MT_WPDMA_RST_IDX, ~0);

	ret = FUNC2(dev, MT7615_TX_RING_SIZE);
	if (ret)
		return ret;

	ret = FUNC1(dev, &dev->mt76.q_tx[MT_TXQ_MCU],
				    MT7615_TXQ_MCU,
				    MT7615_TX_MCU_RING_SIZE);
	if (ret)
		return ret;

	ret = FUNC1(dev, &dev->mt76.q_tx[MT_TXQ_FWDL],
				    MT7615_TXQ_FWDL,
				    MT7615_TX_FWDL_RING_SIZE);
	if (ret)
		return ret;

	/* init rx queues */
	ret = FUNC8(dev, &dev->mt76.q_rx[MT_RXQ_MCU], 1,
			       MT7615_RX_MCU_RING_SIZE, MT_RX_BUF_SIZE,
			       MT_RX_RING_BASE);
	if (ret)
		return ret;

	ret = FUNC8(dev, &dev->mt76.q_rx[MT_RXQ_MAIN], 0,
			       MT7615_RX_RING_SIZE, MT_RX_BUF_SIZE,
			       MT_RX_RING_BASE);
	if (ret)
		return ret;

	FUNC11(dev, MT_DELAY_INT_CFG, 0);

	ret = FUNC6(dev);
	if (ret < 0)
		return ret;

	FUNC13(&dev->mt76.napi_dev, &dev->mt76.tx_napi,
			  mt7615_poll_tx, NAPI_POLL_WEIGHT);
	FUNC12(&dev->mt76.tx_napi);

	FUNC7(dev, MT_WPDMA_GLO_CFG,
		  MT_WPDMA_GLO_CFG_TX_DMA_BUSY |
		  MT_WPDMA_GLO_CFG_RX_DMA_BUSY, 0, 1000);

	/* start dma engine */
	FUNC10(dev, MT_WPDMA_GLO_CFG,
		 MT_WPDMA_GLO_CFG_TX_DMA_EN |
		 MT_WPDMA_GLO_CFG_RX_DMA_EN);

	/* enable interrupts for TX/RX rings */
	FUNC3(dev, MT_INT_RX_DONE_ALL | MT_INT_TX_DONE_ALL);

	return 0;
}