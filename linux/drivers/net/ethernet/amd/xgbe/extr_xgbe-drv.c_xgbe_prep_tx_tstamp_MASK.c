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
struct xgbe_prv_data {int /*<<< orphan*/  tstamp_lock; int /*<<< orphan*/  tx_tstamp_skb; } ;
struct xgbe_packet_data {int /*<<< orphan*/  attributes; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTP ; 
 int /*<<< orphan*/  SKBTX_IN_PROGRESS ; 
 int /*<<< orphan*/  TX_PACKET_ATTRIBUTES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct xgbe_prv_data *pdata,
				struct sk_buff *skb,
				struct xgbe_packet_data *packet)
{
	unsigned long flags;

	if (FUNC0(packet->attributes, TX_PACKET_ATTRIBUTES, PTP)) {
		FUNC5(&pdata->tstamp_lock, flags);
		if (pdata->tx_tstamp_skb) {
			/* Another timestamp in progress, ignore this one */
			FUNC1(packet->attributes,
				       TX_PACKET_ATTRIBUTES, PTP, 0);
		} else {
			pdata->tx_tstamp_skb = FUNC2(skb);
			FUNC3(skb)->tx_flags |= SKBTX_IN_PROGRESS;
		}
		FUNC6(&pdata->tstamp_lock, flags);
	}

	FUNC4(skb);
}