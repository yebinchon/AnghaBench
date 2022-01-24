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
struct timespec64 {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct macb_dma_desc_ptp {int /*<<< orphan*/  ts_2; int /*<<< orphan*/  ts_1; } ;
struct macb_dma_desc {int /*<<< orphan*/  addr; } ;
struct macb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_RXVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct macb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timespec64*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct macb_dma_desc_ptp* FUNC3 (struct macb*,struct macb_dma_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 struct skb_shared_hwtstamps* FUNC5 (struct sk_buff*) ; 

void FUNC6(struct macb *bp, struct sk_buff *skb,
		     struct macb_dma_desc *desc)
{
	struct skb_shared_hwtstamps *shhwtstamps = FUNC5(skb);
	struct macb_dma_desc_ptp *desc_ptp;
	struct timespec64 ts;

	if (FUNC0(DMA_RXVALID, desc->addr)) {
		desc_ptp = FUNC3(bp, desc);
		FUNC1(bp, desc_ptp->ts_1, desc_ptp->ts_2, &ts);
		FUNC4(shhwtstamps, 0, sizeof(struct skb_shared_hwtstamps));
		shhwtstamps->hwtstamp = FUNC2(ts.tv_sec, ts.tv_nsec);
	}
}