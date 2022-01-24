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
struct xlgmac_pdata {unsigned int channel_count; int /*<<< orphan*/  rx_buf_size; struct xlgmac_channel* channel_head; } ;
struct xlgmac_channel {int /*<<< orphan*/  rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_RCR ; 
 int /*<<< orphan*/  DMA_CH_RCR_RBSZ_LEN ; 
 int /*<<< orphan*/  DMA_CH_RCR_RBSZ_POS ; 
 int /*<<< orphan*/  FUNC0 (struct xlgmac_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct xlgmac_pdata *pdata)
{
	struct xlgmac_channel *channel;
	unsigned int i;
	u32 regval;

	channel = pdata->channel_head;
	for (i = 0; i < pdata->channel_count; i++, channel++) {
		if (!channel->rx_ring)
			break;

		regval = FUNC2(FUNC0(channel, DMA_CH_RCR));
		regval = FUNC1(regval, DMA_CH_RCR_RBSZ_POS,
					     DMA_CH_RCR_RBSZ_LEN,
					pdata->rx_buf_size);
		FUNC3(regval, FUNC0(channel, DMA_CH_RCR));
	}
}