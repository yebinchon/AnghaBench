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
struct mt7615_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int MT7615_RATE_RETRY ; 
 int /*<<< orphan*/  MT_AGG_ACR0 ; 
 int /*<<< orphan*/  MT_AGG_ACR1 ; 
 int MT_AGG_ACR_BAR_RATE ; 
 int MT_AGG_ACR_CFEND_RATE ; 
 int MT_AGG_ACR_NO_BA_AR_RULE ; 
 int MT_AGG_ACR_PKT_TIME_EN ; 
 int /*<<< orphan*/  MT_AGG_ARCR ; 
 int MT_AGG_ARCR_RATE_DOWN_RATIO ; 
 int MT_AGG_ARCR_RATE_DOWN_RATIO_EN ; 
 int MT_AGG_ARCR_RATE_UP_EXTRA_TH ; 
 int MT_AGG_ARCR_RTS_RATE_THR ; 
 int /*<<< orphan*/  MT_AGG_ARDCR ; 
 int /*<<< orphan*/  MT_AGG_ARUCR ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  MT_AGG_SCR ; 
 int MT_AGG_SCR_NLNAV_MID_PTEC_DIS ; 
 int /*<<< orphan*/  MT_CFG_CCR ; 
 int MT_CFG_CCR_MAC_D0_1X_GC_EN ; 
 int MT_CFG_CCR_MAC_D0_2X_GC_EN ; 
 int MT_CFG_CCR_MAC_D1_1X_GC_EN ; 
 int MT_CFG_CCR_MAC_D1_2X_GC_EN ; 
 int /*<<< orphan*/  MT_DMA_DCR0 ; 
 int MT_DMA_DCR0_MAX_RX_LEN ; 
 int MT_DMA_DCR0_RX_VEC_DROP ; 
 int /*<<< orphan*/  MT_TMAC_CTCR0 ; 
 int /*<<< orphan*/  MT_TMAC_CTCR0_INS_DDLMT_DENSITY ; 
 int MT_TMAC_CTCR0_INS_DDLMT_EN ; 
 int /*<<< orphan*/  MT_TMAC_CTCR0_INS_DDLMT_REFTIME ; 
 int MT_TMAC_CTCR0_INS_DDLMT_VHT_SMPDU_EN ; 
 int /*<<< orphan*/  MT_TMAC_TRCR0 ; 
 int /*<<< orphan*/  MT_TMAC_TRCR1 ; 
 int MT_TMAC_TRCR_CCA_SEL ; 
 int MT_TMAC_TRCR_SEC_CCA_SEL ; 
 int /*<<< orphan*/  FUNC2 (struct mt7615_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7615_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7615_dev*,int) ; 
 int FUNC5 (struct mt7615_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7615_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7615_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7615_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct mt7615_dev *dev)
{
	u32 val;

	/* enable band 0/1 clk */
	FUNC7(dev, MT_CFG_CCR,
		 MT_CFG_CCR_MAC_D0_1X_GC_EN | MT_CFG_CCR_MAC_D0_2X_GC_EN |
		 MT_CFG_CCR_MAC_D1_1X_GC_EN | MT_CFG_CCR_MAC_D1_2X_GC_EN);

	val = FUNC5(dev, MT_TMAC_TRCR0,
		       MT_TMAC_TRCR_CCA_SEL | MT_TMAC_TRCR_SEC_CCA_SEL,
		       FUNC0(MT_TMAC_TRCR_CCA_SEL, 2) |
		       FUNC0(MT_TMAC_TRCR_SEC_CCA_SEL, 0));
	FUNC8(dev, MT_TMAC_TRCR1, val);

	val = MT_AGG_ACR_PKT_TIME_EN | MT_AGG_ACR_NO_BA_AR_RULE |
	      FUNC0(MT_AGG_ACR_CFEND_RATE, 0x49) | /* 24M */
	      FUNC0(MT_AGG_ACR_BAR_RATE, 0x4b); /* 6M */
	FUNC8(dev, MT_AGG_ACR0, val);
	FUNC8(dev, MT_AGG_ACR1, val);

	FUNC6(dev, MT_TMAC_CTCR0,
		       MT_TMAC_CTCR0_INS_DDLMT_REFTIME, 0x3f);
	FUNC6(dev, MT_TMAC_CTCR0,
		       MT_TMAC_CTCR0_INS_DDLMT_DENSITY, 0x3);
	FUNC5(dev, MT_TMAC_CTCR0,
		 MT_TMAC_CTCR0_INS_DDLMT_VHT_SMPDU_EN |
		 MT_TMAC_CTCR0_INS_DDLMT_EN,
		 MT_TMAC_CTCR0_INS_DDLMT_VHT_SMPDU_EN |
		 MT_TMAC_CTCR0_INS_DDLMT_EN);

	FUNC4(dev, 0x92b);
	FUNC2(dev, false);

	FUNC5(dev, MT_AGG_SCR, MT_AGG_SCR_NLNAV_MID_PTEC_DIS,
		 MT_AGG_SCR_NLNAV_MID_PTEC_DIS);

	FUNC3(dev);

	FUNC8(dev, MT_DMA_DCR0, MT_DMA_DCR0_RX_VEC_DROP |
		FUNC0(MT_DMA_DCR0_MAX_RX_LEN, 3072));

	FUNC8(dev, MT_AGG_ARUCR,
		FUNC0(FUNC1(0), 7) |
		FUNC0(FUNC1(1), 2) |
		FUNC0(FUNC1(2), 2) |
		FUNC0(FUNC1(3), 2) |
		FUNC0(FUNC1(4), 1) |
		FUNC0(FUNC1(5), 1) |
		FUNC0(FUNC1(6), 1) |
		FUNC0(FUNC1(7), 1));

	FUNC8(dev, MT_AGG_ARDCR,
		FUNC0(FUNC1(0), MT7615_RATE_RETRY - 1) |
		FUNC0(FUNC1(1), MT7615_RATE_RETRY - 1) |
		FUNC0(FUNC1(2), MT7615_RATE_RETRY - 1) |
		FUNC0(FUNC1(3), MT7615_RATE_RETRY - 1) |
		FUNC0(FUNC1(4), MT7615_RATE_RETRY - 1) |
		FUNC0(FUNC1(5), MT7615_RATE_RETRY - 1) |
		FUNC0(FUNC1(6), MT7615_RATE_RETRY - 1) |
		FUNC0(FUNC1(7), MT7615_RATE_RETRY - 1));

	FUNC8(dev, MT_AGG_ARCR,
		(FUNC0(MT_AGG_ARCR_RTS_RATE_THR, 2) |
		 MT_AGG_ARCR_RATE_DOWN_RATIO_EN |
		 FUNC0(MT_AGG_ARCR_RATE_DOWN_RATIO, 1) |
		 FUNC0(MT_AGG_ARCR_RATE_UP_EXTRA_TH, 4)));
}