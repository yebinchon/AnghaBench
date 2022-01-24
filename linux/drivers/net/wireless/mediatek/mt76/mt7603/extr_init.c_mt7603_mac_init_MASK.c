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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_6__ {size_t idx; } ;
struct TYPE_5__ {TYPE_3__ wcid; } ;
struct TYPE_4__ {int /*<<< orphan*/ * wcid; } ;
struct mt7603_dev {TYPE_2__ global_sta; TYPE_1__ mt76; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ETH_ALEN ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int MT7603_RATE_RETRY ; 
 size_t MT7603_WTBL_RESERVED ; 
 int MT7603_WTBL_SIZE ; 
 int /*<<< orphan*/  MT_AGG_ARCR ; 
 int /*<<< orphan*/  MT_AGG_ARCR_RATE_DOWN_RATIO ; 
 int MT_AGG_ARCR_RATE_DOWN_RATIO_EN ; 
 int /*<<< orphan*/  MT_AGG_ARCR_RATE_UP_EXTRA_TH ; 
 int /*<<< orphan*/  MT_AGG_ARCR_RTS_RATE_THR ; 
 int /*<<< orphan*/  MT_AGG_ARDCR ; 
 int /*<<< orphan*/  MT_AGG_ARUCR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  MT_AGG_BA_SIZE_LIMIT_0 ; 
 int /*<<< orphan*/  MT_AGG_BA_SIZE_LIMIT_1 ; 
 int MT_AGG_BA_SIZE_LIMIT_SHIFT ; 
 int /*<<< orphan*/  MT_AGG_CONTROL ; 
 int /*<<< orphan*/  MT_AGG_CONTROL_BAR_RATE ; 
 int /*<<< orphan*/  MT_AGG_CONTROL_CFEND_RATE ; 
 int MT_AGG_CONTROL_NO_BA_AR_RULE ; 
 int /*<<< orphan*/  MT_AGG_LIMIT ; 
 int /*<<< orphan*/  MT_AGG_LIMIT_1 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ MT_AGG_PCR_RTS ; 
 int /*<<< orphan*/  MT_AGG_PCR_RTS_PKT_THR ; 
 int /*<<< orphan*/  MT_AGG_RETRY_CONTROL ; 
 int /*<<< orphan*/  MT_AGG_RETRY_CONTROL_BAR_LIMIT ; 
 int /*<<< orphan*/  MT_AGG_RETRY_CONTROL_RTS_LIMIT ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  MT_CLIENT_BASE_PHYS_ADDR ; 
 scalar_t__ MT_CLIENT_RXINF ; 
 int /*<<< orphan*/  MT_CLIENT_RXINF_RXSH_GROUPS ; 
 int /*<<< orphan*/  MT_DMA_DCR0 ; 
 int /*<<< orphan*/  MT_DMA_DCR0_MAX_RX_LEN ; 
 int MT_DMA_DCR0_RX_VEC_DROP ; 
 scalar_t__ MT_DMA_DCR1 ; 
 int /*<<< orphan*/  MT_DMA_RCFR0 ; 
 int /*<<< orphan*/  MT_DMA_TCFR0 ; 
 int /*<<< orphan*/  MT_DMA_TCFR1 ; 
 int MT_DMA_TCFR_TXS_AGGR_COUNT ; 
 int /*<<< orphan*/  MT_DMA_TCFR_TXS_AGGR_TIMEOUT ; 
 int MT_DMA_TCFR_TXS_BIT_MAP ; 
 int /*<<< orphan*/  MT_DMA_TMCFR0 ; 
 int /*<<< orphan*/  MT_DMA_VCFR0 ; 
 scalar_t__ MT_LPON_BTEIR ; 
 int /*<<< orphan*/  MT_LPON_BTEIR_MBSS_MODE ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  MT_LPON_SBTOR_TIME_OFFSET ; 
 int /*<<< orphan*/  MT_MCU_PCIE_REMAP_1 ; 
 int MT_PSE_WTBL_2_PHYS_ADDR ; 
 int /*<<< orphan*/  MT_RXREQ ; 
 int /*<<< orphan*/  MT_SEC_SCR ; 
 int MT_SEC_SCR_MASK_ORDER ; 
 scalar_t__ MT_TMAC_PCR ; 
 int /*<<< orphan*/  MT_TMAC_PCR_SPE_EN ; 
 scalar_t__ MT_TMAC_TCR ; 
 int /*<<< orphan*/  MT_TMAC_TCR_RX_RIFS_MODE ; 
 scalar_t__ MT_TXREQ ; 
 int /*<<< orphan*/  MT_TXREQ_CCA_SRC_SEL ; 
 int /*<<< orphan*/  MT_WF_RFCR1 ; 
 scalar_t__ MT_WF_RMACDR ; 
 int /*<<< orphan*/  MT_WF_RMACDR_MAXLEN_20BIT ; 
 int /*<<< orphan*/  MT_WF_RMACDR_MBSSID_MASK ; 
 int /*<<< orphan*/  MT_WF_RMAC_MAXMINLEN ; 
 int /*<<< orphan*/  MT_WF_RMAC_TMR_PA ; 
 scalar_t__ MT_WTBL_RMVTCR ; 
 int /*<<< orphan*/  MT_WTBL_RMVTCR_RX_MV_MODE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7603_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mt7603_dev*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mt7603_dev*,size_t,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mt7603_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mt7603_dev*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mt7603_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC18(struct mt7603_dev *dev)
{
	u8 bc_addr[ETH_ALEN];
	u32 addr;
	int i;

	FUNC16(dev, MT_AGG_BA_SIZE_LIMIT_0,
		(FUNC5(0) << 0 * MT_AGG_BA_SIZE_LIMIT_SHIFT) |
		(FUNC5(1) << 1 * MT_AGG_BA_SIZE_LIMIT_SHIFT) |
		(FUNC5(2) << 2 * MT_AGG_BA_SIZE_LIMIT_SHIFT) |
		(FUNC5(3) << 3 * MT_AGG_BA_SIZE_LIMIT_SHIFT));

	FUNC16(dev, MT_AGG_BA_SIZE_LIMIT_1,
		(FUNC5(4) << 0 * MT_AGG_BA_SIZE_LIMIT_SHIFT) |
		(FUNC5(5) << 1 * MT_AGG_BA_SIZE_LIMIT_SHIFT) |
		(FUNC5(6) << 2 * MT_AGG_BA_SIZE_LIMIT_SHIFT) |
		(FUNC5(7) << 3 * MT_AGG_BA_SIZE_LIMIT_SHIFT));

	FUNC16(dev, MT_AGG_LIMIT,
		FUNC1(FUNC4(0), 24) |
		FUNC1(FUNC4(1), 24) |
		FUNC1(FUNC4(2), 24) |
		FUNC1(FUNC4(3), 24));

	FUNC16(dev, MT_AGG_LIMIT_1,
		FUNC1(FUNC4(0), 24) |
		FUNC1(FUNC4(1), 24) |
		FUNC1(FUNC4(2), 24) |
		FUNC1(FUNC4(3), 24));

	FUNC16(dev, MT_AGG_CONTROL,
		FUNC1(MT_AGG_CONTROL_BAR_RATE, 0x4b) |
		FUNC1(MT_AGG_CONTROL_CFEND_RATE, 0x69) |
		MT_AGG_CONTROL_NO_BA_AR_RULE);

	FUNC16(dev, MT_AGG_RETRY_CONTROL,
		FUNC1(MT_AGG_RETRY_CONTROL_BAR_LIMIT, 1) |
		FUNC1(MT_AGG_RETRY_CONTROL_RTS_LIMIT, 15));

	FUNC16(dev, MT_DMA_DCR0, MT_DMA_DCR0_RX_VEC_DROP |
		FUNC1(MT_DMA_DCR0_MAX_RX_LEN, 4096));

	FUNC13(dev, MT_DMA_VCFR0, FUNC0(0), FUNC0(13));
	FUNC13(dev, MT_DMA_TMCFR0, FUNC0(0) | FUNC0(1), FUNC0(13));

	FUNC12(dev, MT_WF_RMAC_TMR_PA, FUNC0(31));

	FUNC15(dev, MT_WF_RMACDR, MT_WF_RMACDR_MAXLEN_20BIT);
	FUNC13(dev, MT_WF_RMAC_MAXMINLEN, 0xffffff, 0x19000);

	FUNC16(dev, MT_WF_RFCR1, 0);

	FUNC15(dev, MT_TMAC_TCR, MT_TMAC_TCR_RX_RIFS_MODE);

	FUNC9(dev);

	/* Enable RX group to HIF */
	addr = FUNC8(dev, MT_CLIENT_BASE_PHYS_ADDR);
	FUNC15(dev, addr + MT_CLIENT_RXINF, MT_CLIENT_RXINF_RXSH_GROUPS);

	/* Enable RX group to MCU */
	FUNC15(dev, MT_DMA_DCR1, FUNC2(13, 11));

	FUNC14(dev, MT_AGG_PCR_RTS, MT_AGG_PCR_RTS_PKT_THR, 3);
	FUNC15(dev, MT_TMAC_PCR, MT_TMAC_PCR_SPE_EN);

	/* include preamble detection in CCA trigger signal */
	FUNC14(dev, MT_TXREQ, MT_TXREQ_CCA_SRC_SEL, 2);

	FUNC16(dev, MT_RXREQ, 4);

	/* Configure all rx packets to HIF */
	FUNC16(dev, MT_DMA_RCFR0, 0xc0000000);

	/* Configure MCU txs selection with aggregation */
	FUNC16(dev, MT_DMA_TCFR0,
		FUNC1(MT_DMA_TCFR_TXS_AGGR_TIMEOUT, 1) | /* 32 us */
		MT_DMA_TCFR_TXS_AGGR_COUNT);

	/* Configure HIF txs selection with aggregation */
	FUNC16(dev, MT_DMA_TCFR1,
		FUNC1(MT_DMA_TCFR_TXS_AGGR_TIMEOUT, 1) | /* 32 us */
		MT_DMA_TCFR_TXS_AGGR_COUNT | /* Maximum count */
		MT_DMA_TCFR_TXS_BIT_MAP);

	FUNC16(dev, MT_MCU_PCIE_REMAP_1, MT_PSE_WTBL_2_PHYS_ADDR);

	for (i = 0; i < MT7603_WTBL_SIZE; i++)
		FUNC10(dev, i);

	FUNC7(bc_addr);
	FUNC11(dev, MT7603_WTBL_RESERVED, -1, bc_addr);
	dev->global_sta.wcid.idx = MT7603_WTBL_RESERVED;
	FUNC17(dev->mt76.wcid[MT7603_WTBL_RESERVED],
			   &dev->global_sta.wcid);

	FUNC14(dev, MT_LPON_BTEIR, MT_LPON_BTEIR_MBSS_MODE, 2);
	FUNC14(dev, MT_WF_RMACDR, MT_WF_RMACDR_MBSSID_MASK, 2);

	FUNC16(dev, MT_AGG_ARUCR,
		FUNC1(FUNC3(0), 7) |
		FUNC1(FUNC3(1), 2) |
		FUNC1(FUNC3(2), 2) |
		FUNC1(FUNC3(3), 2) |
		FUNC1(FUNC3(4), 1) |
		FUNC1(FUNC3(5), 1) |
		FUNC1(FUNC3(6), 1) |
		FUNC1(FUNC3(7), 1));

	FUNC16(dev, MT_AGG_ARDCR,
		FUNC1(FUNC3(0), MT7603_RATE_RETRY - 1) |
		FUNC1(FUNC3(1), MT7603_RATE_RETRY - 1) |
		FUNC1(FUNC3(2), MT7603_RATE_RETRY - 1) |
		FUNC1(FUNC3(3), MT7603_RATE_RETRY - 1) |
		FUNC1(FUNC3(4), MT7603_RATE_RETRY - 1) |
		FUNC1(FUNC3(5), MT7603_RATE_RETRY - 1) |
		FUNC1(FUNC3(6), MT7603_RATE_RETRY - 1) |
		FUNC1(FUNC3(7), MT7603_RATE_RETRY - 1));

	FUNC16(dev, MT_AGG_ARCR,
		(FUNC1(MT_AGG_ARCR_RTS_RATE_THR, 2) |
		 MT_AGG_ARCR_RATE_DOWN_RATIO_EN |
		 FUNC1(MT_AGG_ARCR_RATE_DOWN_RATIO, 1) |
		 FUNC1(MT_AGG_ARCR_RATE_UP_EXTRA_TH, 4)));

	FUNC15(dev, MT_WTBL_RMVTCR, MT_WTBL_RMVTCR_RX_MV_MODE);

	FUNC12(dev, MT_SEC_SCR, MT_SEC_SCR_MASK_ORDER);
	FUNC12(dev, MT_SEC_SCR, FUNC0(18));

	/* Set secondary beacon time offsets */
	for (i = 0; i <= 4; i++)
		FUNC14(dev, FUNC6(i), MT_LPON_SBTOR_TIME_OFFSET,
			       (i + 1) * (20 + 4096));
}