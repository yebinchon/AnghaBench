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
struct xlgmac_pdata {unsigned int channel_count; scalar_t__ mac_regs; struct xlgmac_channel* channel_head; } ;
struct xlgmac_channel {int /*<<< orphan*/  rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_CR ; 
 int /*<<< orphan*/  DMA_CH_CR_SPH_LEN ; 
 int /*<<< orphan*/  DMA_CH_CR_SPH_POS ; 
 scalar_t__ MAC_RCR ; 
 int /*<<< orphan*/  MAC_RCR_HDSMS_LEN ; 
 int /*<<< orphan*/  MAC_RCR_HDSMS_POS ; 
 scalar_t__ FUNC0 (struct xlgmac_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int XLGMAC_SPH_HDSMS_SIZE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct xlgmac_pdata *pdata)
{
	struct xlgmac_channel *channel;
	unsigned int i;
	u32 regval;

	channel = pdata->channel_head;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		if (!channel->rx_ring)
			break;

		regval = FUNC2(FUNC0(channel, DMA_CH_CR));
		regval = FUNC1(regval, DMA_CH_CR_SPH_POS,
					     DMA_CH_CR_SPH_LEN, 1);
		FUNC3(regval, FUNC0(channel, DMA_CH_CR));
	}

	regval = FUNC2(pdata->mac_regs + MAC_RCR);
	regval = FUNC1(regval, MAC_RCR_HDSMS_POS,
				     MAC_RCR_HDSMS_LEN,
				XLGMAC_SPH_HDSMS_SIZE);
	FUNC3(regval, pdata->mac_regs + MAC_RCR);
}