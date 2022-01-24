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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {scalar_t__ cb; } ;
struct phy_txts {int ns_hi; } ;
struct dp83640_skb_info {int /*<<< orphan*/  tmo; } ;
struct dp83640_private {int /*<<< orphan*/  tx_queue; } ;
typedef  int /*<<< orphan*/  shhwtstamps ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_txts*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct skb_shared_hwtstamps*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct dp83640_private *dp83640,
			struct phy_txts *phy_txts)
{
	struct skb_shared_hwtstamps shhwtstamps;
	struct dp83640_skb_info *skb_info;
	struct sk_buff *skb;
	u8 overflow;
	u64 ns;

	/* We must already have the skb that triggered this. */
again:
	skb = FUNC6(&dp83640->tx_queue);
	if (!skb) {
		FUNC4("have timestamp but tx_queue empty\n");
		return;
	}

	overflow = (phy_txts->ns_hi >> 14) & 0x3;
	if (overflow) {
		FUNC4("tx timestamp queue overflow, count %d\n", overflow);
		while (skb) {
			FUNC0(skb);
			skb = FUNC6(&dp83640->tx_queue);
		}
		return;
	}
	skb_info = (struct dp83640_skb_info *)skb->cb;
	if (FUNC7(jiffies, skb_info->tmo)) {
		FUNC0(skb);
		goto again;
	}

	ns = FUNC3(phy_txts);
	FUNC1(&shhwtstamps, 0, sizeof(shhwtstamps));
	shhwtstamps.hwtstamp = FUNC2(ns);
	FUNC5(skb, &shhwtstamps);
}