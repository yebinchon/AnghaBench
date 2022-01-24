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
struct xgbe_ring_data {int /*<<< orphan*/  rdesc_dma; } ;
struct TYPE_2__ {scalar_t__ xmit_more; } ;
struct xgbe_ring {TYPE_1__ tx; int /*<<< orphan*/  cur; } ;
struct xgbe_prv_data {scalar_t__ tx_usecs; } ;
struct xgbe_channel {int tx_timer_active; int /*<<< orphan*/  tx_timer; struct xgbe_prv_data* pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CH_TDTR_LO ; 
 struct xgbe_ring_data* FUNC0 (struct xgbe_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct xgbe_channel *channel,
			       struct xgbe_ring *ring)
{
	struct xgbe_prv_data *pdata = channel->pdata;
	struct xgbe_ring_data *rdata;

	/* Make sure everything is written before the register write */
	FUNC5();

	/* Issue a poll command to Tx DMA by writing address
	 * of next immediate free descriptor */
	rdata = FUNC0(ring, ring->cur);
	FUNC1(channel, DMA_CH_TDTR_LO,
			  FUNC2(rdata->rdesc_dma));

	/* Start the Tx timer */
	if (pdata->tx_usecs && !channel->tx_timer_active) {
		channel->tx_timer_active = 1;
		FUNC3(&channel->tx_timer,
			  jiffies + FUNC4(pdata->tx_usecs));
	}

	ring->tx.xmit_more = 0;
}