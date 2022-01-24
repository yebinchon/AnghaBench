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
struct xlgmac_pdata {unsigned int channel_count; int /*<<< orphan*/  tx_pbl; struct xlgmac_channel* channel_head; } ;
struct xlgmac_channel {int /*<<< orphan*/  tx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_TCR ; 
 int /*<<< orphan*/  DMA_CH_TCR_PBL_LEN ; 
 int /*<<< orphan*/  DMA_CH_TCR_PBL_POS ; 
 int /*<<< orphan*/  FUNC0 (struct xlgmac_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct xlgmac_pdata *pdata)
{
	struct xlgmac_channel *channel;
	unsigned int i;
	u32 regval;

	channel = pdata->channel_head;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		if (!channel->tx_ring)
			break;

		regval = FUNC2(FUNC0(channel, DMA_CH_TCR));
		regval = FUNC1(regval, DMA_CH_TCR_PBL_POS,
					     DMA_CH_TCR_PBL_LEN,
					pdata->tx_pbl);
		FUNC3(regval, FUNC0(channel, DMA_CH_TCR));
	}

	return 0;
}