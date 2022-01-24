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
struct xlgmac_pdata {unsigned int rx_q_count; unsigned int channel_count; struct xlgmac_channel* channel_head; scalar_t__ mac_regs; } ;
struct xlgmac_channel {int /*<<< orphan*/  rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_RCR ; 
 int /*<<< orphan*/  DMA_CH_RCR_SR_LEN ; 
 int /*<<< orphan*/  DMA_CH_RCR_SR_POS ; 
 scalar_t__ MAC_RCR ; 
 int /*<<< orphan*/  MAC_RCR_ACS_LEN ; 
 int /*<<< orphan*/  MAC_RCR_ACS_POS ; 
 int /*<<< orphan*/  MAC_RCR_CST_LEN ; 
 int /*<<< orphan*/  MAC_RCR_CST_POS ; 
 int /*<<< orphan*/  MAC_RCR_DCRCC_LEN ; 
 int /*<<< orphan*/  MAC_RCR_DCRCC_POS ; 
 int /*<<< orphan*/  MAC_RCR_RE_LEN ; 
 int /*<<< orphan*/  MAC_RCR_RE_POS ; 
 scalar_t__ MAC_RQC0R ; 
 scalar_t__ FUNC0 (struct xlgmac_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct xlgmac_pdata*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct xlgmac_pdata *pdata)
{
	struct xlgmac_channel *channel;
	unsigned int i;
	u32 regval;

	/* Disable MAC Rx */
	regval = FUNC2(pdata->mac_regs + MAC_RCR);
	regval = FUNC1(regval, MAC_RCR_DCRCC_POS,
				     MAC_RCR_DCRCC_LEN, 0);
	regval = FUNC1(regval, MAC_RCR_CST_POS,
				     MAC_RCR_CST_LEN, 0);
	regval = FUNC1(regval, MAC_RCR_ACS_POS,
				     MAC_RCR_ACS_LEN, 0);
	regval = FUNC1(regval, MAC_RCR_RE_POS,
				     MAC_RCR_RE_LEN, 0);
	FUNC3(regval, pdata->mac_regs + MAC_RCR);

	/* Prepare for Rx DMA channel stop */
	for (i = 0; i < pdata->rx_q_count; i++)
		FUNC4(pdata, i);

	/* Disable each Rx queue */
	FUNC3(0, pdata->mac_regs + MAC_RQC0R);

	/* Disable each Rx DMA channel */
	channel = pdata->channel_head;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		if (!channel->rx_ring)
			break;

		regval = FUNC2(FUNC0(channel, DMA_CH_RCR));
		regval = FUNC1(regval, DMA_CH_RCR_SR_POS,
					     DMA_CH_RCR_SR_LEN, 0);
		FUNC3(regval, FUNC0(channel, DMA_CH_RCR));
	}
}