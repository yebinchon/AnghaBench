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
typedef  int u32 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  protocol; } ;
struct cp_private {int /*<<< orphan*/  napi; TYPE_2__* dev; } ;
struct cp_desc {int /*<<< orphan*/  opts2; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int RxVlanTagged ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static inline void FUNC6 (struct cp_private *cp, struct sk_buff *skb,
			      struct cp_desc *desc)
{
	u32 opts2 = FUNC3(desc->opts2);

	skb->protocol = FUNC1 (skb, cp->dev);

	cp->dev->stats.rx_packets++;
	cp->dev->stats.rx_bytes += skb->len;

	if (opts2 & RxVlanTagged)
		FUNC0(skb, FUNC2(ETH_P_8021Q), FUNC5(opts2 & 0xffff));

	FUNC4(&cp->napi, skb);
}