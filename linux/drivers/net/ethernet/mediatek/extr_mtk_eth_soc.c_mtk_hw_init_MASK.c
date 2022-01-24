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
typedef  int u32 ;
struct mtk_eth {int /*<<< orphan*/  dev; scalar_t__ pctl; TYPE_1__* soc; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_BIAS_CTRL ; 
 int /*<<< orphan*/  GPIO_DRV_SEL10 ; 
 int /*<<< orphan*/  GPIO_OD33_CTRL8 ; 
 int MAC_MCR_FORCE_LINK_DOWN ; 
 int /*<<< orphan*/  MTK_CDMP_EG_CTRL ; 
 int /*<<< orphan*/  MTK_CDMQ_IG_CTRL ; 
 int MTK_CDMQ_STAG_EN ; 
 int /*<<< orphan*/  MTK_FE_INT_GRP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MTK_GDMA_ICS_EN ; 
 int MTK_GDMA_TCS_EN ; 
 int MTK_GDMA_UCS_EN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTK_HW_INIT ; 
 int MTK_MAC_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MTK_PDMA_DELAY_INT ; 
 int MTK_PDMA_DELAY_RX_DELAY ; 
 int /*<<< orphan*/  MTK_PDMA_INT_GRP1 ; 
 int /*<<< orphan*/  MTK_PDMA_INT_GRP2 ; 
 int /*<<< orphan*/  MTK_QDMA_DELAY_INT ; 
 int /*<<< orphan*/  MTK_QDMA_INT_GRP1 ; 
 int /*<<< orphan*/  MTK_QDMA_INT_GRP2 ; 
 int /*<<< orphan*/  MTK_RST_GL ; 
 int MTK_RX_DONE_INT ; 
 int /*<<< orphan*/  MTK_SOC_MT7628 ; 
 int MTK_TX_DONE_INT ; 
 int /*<<< orphan*/  RSTCTRL_FE ; 
 int /*<<< orphan*/  RSTCTRL_PPE ; 
 int RST_GL_PSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mtk_eth*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mtk_eth*) ; 
 int FUNC7 (struct mtk_eth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mtk_eth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mtk_eth*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mtk_eth*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct mtk_eth *eth)
{
	int i, val, ret;

	if (FUNC16(MTK_HW_INIT, &eth->state))
		return 0;

	FUNC12(eth->dev);
	FUNC13(eth->dev);

	ret = FUNC6(eth);
	if (ret)
		goto err_disable_pm;

	if (FUNC1(eth->soc->caps, MTK_SOC_MT7628)) {
		ret = FUNC4(eth->dev);
		if (ret) {
			FUNC3(eth->dev, "MAC reset failed!\n");
			goto err_disable_pm;
		}

		/* enable interrupt delay for RX */
		FUNC10(eth, MTK_PDMA_DELAY_RX_DELAY, MTK_PDMA_DELAY_INT);

		/* disable delay and normal interrupt */
		FUNC9(eth, ~0);
		FUNC8(eth, ~0);

		return 0;
	}

	/* Non-MT7628 handling... */
	FUNC5(eth, RSTCTRL_FE);
	FUNC5(eth, RSTCTRL_PPE);

	if (eth->pctl) {
		/* Set GE2 driving and slew rate */
		FUNC15(eth->pctl, GPIO_DRV_SEL10, 0xa00);

		/* set GE2 TDSEL */
		FUNC15(eth->pctl, GPIO_OD33_CTRL8, 0x5);

		/* set GE2 TUNE */
		FUNC15(eth->pctl, GPIO_BIAS_CTRL, 0x0);
	}

	/* Set linkdown as the default for each GMAC. Its own MCR would be set
	 * up with the more appropriate value when mtk_mac_config call is being
	 * invoked.
	 */
	for (i = 0; i < MTK_MAC_COUNT; i++)
		FUNC10(eth, MAC_MCR_FORCE_LINK_DOWN, FUNC2(i));

	/* Indicates CDM to parse the MTK special tag from CPU
	 * which also is working out for untag packets.
	 */
	val = FUNC7(eth, MTK_CDMQ_IG_CTRL);
	FUNC10(eth, val | MTK_CDMQ_STAG_EN, MTK_CDMQ_IG_CTRL);

	/* Enable RX VLan Offloading */
	FUNC10(eth, 1, MTK_CDMP_EG_CTRL);

	/* enable interrupt delay for RX */
	FUNC10(eth, MTK_PDMA_DELAY_RX_DELAY, MTK_PDMA_DELAY_INT);

	/* disable delay and normal interrupt */
	FUNC10(eth, 0, MTK_QDMA_DELAY_INT);
	FUNC9(eth, ~0);
	FUNC8(eth, ~0);
	FUNC10(eth, RST_GL_PSE, MTK_RST_GL);
	FUNC10(eth, 0, MTK_RST_GL);

	/* FE int grouping */
	FUNC10(eth, MTK_TX_DONE_INT, MTK_PDMA_INT_GRP1);
	FUNC10(eth, MTK_RX_DONE_INT, MTK_PDMA_INT_GRP2);
	FUNC10(eth, MTK_TX_DONE_INT, MTK_QDMA_INT_GRP1);
	FUNC10(eth, MTK_RX_DONE_INT, MTK_QDMA_INT_GRP2);
	FUNC10(eth, 0x21021000, MTK_FE_INT_GRP);

	for (i = 0; i < MTK_MAC_COUNT; i++) {
		u32 val = FUNC7(eth, FUNC0(i));

		/* setup the forward port to send frame to PDMA */
		val &= ~0xffff;

		/* Enable RX checksum */
		val |= MTK_GDMA_ICS_EN | MTK_GDMA_TCS_EN | MTK_GDMA_UCS_EN;

		/* setup the mac dma */
		FUNC10(eth, val, FUNC0(i));
	}

	return 0;

err_disable_pm:
	FUNC14(eth->dev);
	FUNC11(eth->dev);

	return ret;
}