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
typedef  int /*<<< orphan*/  u32 ;
struct xlgmac_pdata {unsigned int channel_count; unsigned int tx_q_count; scalar_t__ mac_regs; struct xlgmac_channel* channel_head; } ;
struct xlgmac_channel {int /*<<< orphan*/  tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_TCR ; 
 int /*<<< orphan*/  DMA_CH_TCR_ST_LEN ; 
 int /*<<< orphan*/  DMA_CH_TCR_ST_POS ; 
 scalar_t__ MAC_TCR ; 
 int /*<<< orphan*/  MAC_TCR_TE_LEN ; 
 int /*<<< orphan*/  MAC_TCR_TE_POS ; 
 int MTL_Q_ENABLED ; 
 int /*<<< orphan*/  MTL_Q_TQOMR ; 
 int /*<<< orphan*/  MTL_Q_TQOMR_TXQEN_LEN ; 
 int /*<<< orphan*/  MTL_Q_TQOMR_TXQEN_POS ; 
 scalar_t__ FUNC0 (struct xlgmac_channel*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct xlgmac_pdata*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct xlgmac_pdata *pdata)
{
	struct xlgmac_channel *channel;
	unsigned int i;
	u32 regval;

	/* Enable each Tx DMA channel */
	channel = pdata->channel_head;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		if (!channel->tx_ring)
			break;

		regval = FUNC3(FUNC0(channel, DMA_CH_TCR));
		regval = FUNC2(regval, DMA_CH_TCR_ST_POS,
					     DMA_CH_TCR_ST_LEN, 1);
		FUNC4(regval, FUNC0(channel, DMA_CH_TCR));
	}

	/* Enable each Tx queue */
	for (i = 0; i < pdata->tx_q_count; i++) {
		regval = FUNC3(FUNC1(pdata, i, MTL_Q_TQOMR));
		regval = FUNC2(regval, MTL_Q_TQOMR_TXQEN_POS,
					     MTL_Q_TQOMR_TXQEN_LEN,
					MTL_Q_ENABLED);
		FUNC4(regval, FUNC1(pdata, i, MTL_Q_TQOMR));
	}

	/* Enable MAC Tx */
	regval = FUNC3(pdata->mac_regs + MAC_TCR);
	regval = FUNC2(regval, MAC_TCR_TE_POS,
				     MAC_TCR_TE_LEN, 1);
	FUNC4(regval, pdata->mac_regs + MAC_TCR);
}