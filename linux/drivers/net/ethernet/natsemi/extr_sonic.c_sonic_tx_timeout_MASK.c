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
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct sonic_local {TYPE_1__ stats; int /*<<< orphan*/ ** tx_skb; scalar_t__* tx_laddr; int /*<<< orphan*/ * tx_len; int /*<<< orphan*/  device; } ;
struct net_device {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  SONIC_CMD ; 
 int SONIC_CR_RST ; 
 int /*<<< orphan*/  SONIC_IMR ; 
 int /*<<< orphan*/  SONIC_ISR ; 
 int SONIC_NUM_TDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sonic_local* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct sonic_local *lp = FUNC3(dev);
	int i;
	/*
	 * put the Sonic into software-reset mode and
	 * disable all interrupts before releasing DMA buffers
	 */
	FUNC0(SONIC_IMR, 0);
	FUNC0(SONIC_ISR, 0x7fff);
	FUNC0(SONIC_CMD, SONIC_CR_RST);
	/* We could resend the original skbs. Easier to re-initialise. */
	for (i = 0; i < SONIC_NUM_TDS; i++) {
		if(lp->tx_laddr[i]) {
			FUNC2(lp->device, lp->tx_laddr[i], lp->tx_len[i], DMA_TO_DEVICE);
			lp->tx_laddr[i] = (dma_addr_t)0;
		}
		if(lp->tx_skb[i]) {
			FUNC1(lp->tx_skb[i]);
			lp->tx_skb[i] = NULL;
		}
	}
	/* Try to restart the adaptor. */
	FUNC6(dev);
	lp->stats.tx_errors++;
	FUNC4(dev); /* prevent tx timeout */
	FUNC5(dev);
}