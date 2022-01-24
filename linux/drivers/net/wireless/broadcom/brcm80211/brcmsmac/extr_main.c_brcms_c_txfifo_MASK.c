#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct dma_pub {scalar_t__ txavail; } ;
struct brcms_c_info {TYPE_1__* pub; int /*<<< orphan*/  wiphy; TYPE_2__* hw; } ;
struct TYPE_4__ {struct dma_pub** di; } ;
struct TYPE_3__ {int /*<<< orphan*/  ieee_hw; } ;

/* Variables and functions */
 size_t TX_BCMC_FIFO ; 
 scalar_t__ TX_HEADROOM ; 
 int FUNC0 (struct brcms_c_info*,struct dma_pub*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int
FUNC5(struct brcms_c_info *wlc, uint fifo, struct sk_buff *p)
{
	struct dma_pub *dma = wlc->hw->di[fifo];
	int ret;
	u16 queue;

	ret = FUNC0(wlc, dma, p);
	if (ret	< 0)
		FUNC4(wlc->wiphy, "txfifo: fatal, toss frames !!!\n");

	/*
	 * Stop queue if DMA ring is full. Reserve some free descriptors,
	 * as we sometimes receive a frame from mac80211 after the queues
	 * are stopped.
	 */
	queue = FUNC3(p);
	if (dma->txavail <= TX_HEADROOM && fifo < TX_BCMC_FIFO &&
	    !FUNC1(wlc->pub->ieee_hw, queue))
		FUNC2(wlc->pub->ieee_hw, queue);

	return ret;
}