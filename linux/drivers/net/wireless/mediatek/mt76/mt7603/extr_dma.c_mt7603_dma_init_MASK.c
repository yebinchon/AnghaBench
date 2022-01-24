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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  tx_napi; int /*<<< orphan*/  napi_dev; int /*<<< orphan*/ * q_rx; int /*<<< orphan*/ * q_tx; } ;
struct mt7603_dev {TYPE_1__ mt76; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
#define  IEEE80211_AC_BE 131 
#define  IEEE80211_AC_BK 130 
#define  IEEE80211_AC_VI 129 
#define  IEEE80211_AC_VO 128 
 int /*<<< orphan*/  MT7603_RX_RING_SIZE ; 
 int /*<<< orphan*/  MT_DELAY_INT_CFG ; 
 int /*<<< orphan*/  MT_MCU_RING_SIZE ; 
 size_t MT_RXQ_MAIN ; 
 size_t MT_RXQ_MCU ; 
 int /*<<< orphan*/  MT_RX_BUF_SIZE ; 
 size_t MT_TXQ_BEACON ; 
 size_t MT_TXQ_CAB ; 
 size_t MT_TXQ_MCU ; 
 size_t MT_TXQ_PSD ; 
 int const MT_TX_HW_QUEUE_BCN ; 
 int const MT_TX_HW_QUEUE_BMC ; 
 int const MT_TX_HW_QUEUE_MCU ; 
 int const MT_TX_HW_QUEUE_MGMT ; 
 int /*<<< orphan*/  MT_TX_RING_SIZE ; 
 int /*<<< orphan*/  MT_WPDMA_GLO_CFG ; 
 int MT_WPDMA_GLO_CFG_DMA_BURST_SIZE ; 
 int MT_WPDMA_GLO_CFG_RX_DMA_EN ; 
 int MT_WPDMA_GLO_CFG_TX_DMA_EN ; 
 int MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE ; 
 int /*<<< orphan*/  MT_WPDMA_RST_IDX ; 
 int /*<<< orphan*/  NAPI_POLL_WEIGHT ; 
 int FUNC1 (struct mt7603_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mt7603_dev*,int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt7603_poll_tx ; 
 int /*<<< orphan*/  FUNC3 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC10(struct mt7603_dev *dev)
{
	static const u8 wmm_queue_map[] = {
		[IEEE80211_AC_BK] = 0,
		[IEEE80211_AC_BE] = 1,
		[IEEE80211_AC_VI] = 2,
		[IEEE80211_AC_VO] = 3,
	};
	int ret;
	int i;

	FUNC5(&dev->mt76);

	FUNC4(dev, MT_WPDMA_GLO_CFG,
		   MT_WPDMA_GLO_CFG_TX_DMA_EN |
		   MT_WPDMA_GLO_CFG_RX_DMA_EN |
		   MT_WPDMA_GLO_CFG_DMA_BURST_SIZE |
		   MT_WPDMA_GLO_CFG_TX_WRITEBACK_DONE);

	FUNC7(dev, MT_WPDMA_RST_IDX, ~0);
	FUNC3(dev);

	for (i = 0; i < FUNC0(wmm_queue_map); i++) {
		ret = FUNC2(dev, &dev->mt76.q_tx[i],
					   wmm_queue_map[i],
					   MT_TX_RING_SIZE);
		if (ret)
			return ret;
	}

	ret = FUNC2(dev, &dev->mt76.q_tx[MT_TXQ_PSD],
				   MT_TX_HW_QUEUE_MGMT, MT_TX_RING_SIZE);
	if (ret)
		return ret;

	ret = FUNC2(dev, &dev->mt76.q_tx[MT_TXQ_MCU],
				   MT_TX_HW_QUEUE_MCU, MT_MCU_RING_SIZE);
	if (ret)
		return ret;

	ret = FUNC2(dev, &dev->mt76.q_tx[MT_TXQ_BEACON],
				   MT_TX_HW_QUEUE_BCN, MT_MCU_RING_SIZE);
	if (ret)
		return ret;

	ret = FUNC2(dev, &dev->mt76.q_tx[MT_TXQ_CAB],
				   MT_TX_HW_QUEUE_BMC, MT_MCU_RING_SIZE);
	if (ret)
		return ret;

	ret = FUNC1(dev, &dev->mt76.q_rx[MT_RXQ_MCU], 1,
				   MT_MCU_RING_SIZE, MT_RX_BUF_SIZE);
	if (ret)
		return ret;

	ret = FUNC1(dev, &dev->mt76.q_rx[MT_RXQ_MAIN], 0,
				   MT7603_RX_RING_SIZE, MT_RX_BUF_SIZE);
	if (ret)
		return ret;

	FUNC7(dev, MT_DELAY_INT_CFG, 0);
	ret = FUNC6(dev);
	if (ret)
		return ret;

	FUNC9(&dev->mt76.napi_dev, &dev->mt76.tx_napi,
			  mt7603_poll_tx, NAPI_POLL_WEIGHT);
	FUNC8(&dev->mt76.tx_napi);

	return 0;
}