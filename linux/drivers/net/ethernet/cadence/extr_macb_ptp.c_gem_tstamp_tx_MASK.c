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
struct macb {int dummy; } ;
typedef  int /*<<< orphan*/  shhwtstamps ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct macb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timespec64*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct skb_shared_hwtstamps*) ; 

__attribute__((used)) static void FUNC4(struct macb *bp, struct sk_buff *skb,
			  struct macb_dma_desc_ptp *desc_ptp)
{
	struct skb_shared_hwtstamps shhwtstamps;
	struct timespec64 ts;

	FUNC0(bp, desc_ptp->ts_1, desc_ptp->ts_2, &ts);
	FUNC2(&shhwtstamps, 0, sizeof(shhwtstamps));
	shhwtstamps.hwtstamp = FUNC1(ts.tv_sec, ts.tv_nsec);
	FUNC3(skb, &shhwtstamps);
}