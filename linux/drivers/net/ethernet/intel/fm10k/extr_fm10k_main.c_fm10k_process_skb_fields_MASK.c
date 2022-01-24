#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ vlan; } ;
struct TYPE_12__ {int /*<<< orphan*/  glort; } ;
struct TYPE_8__ {int /*<<< orphan*/  timestamp; } ;
union fm10k_rx_desc {TYPE_6__ w; TYPE_5__ d; TYPE_1__ q; } ;
typedef  int u16 ;
struct sk_buff {unsigned int len; } ;
struct fm10k_ring {int vid; } ;
struct TYPE_10__ {int /*<<< orphan*/  glort; } ;
struct TYPE_9__ {scalar_t__ vlan; } ;
struct TYPE_11__ {TYPE_3__ d; TYPE_2__ w; } ;
struct TYPE_14__ {TYPE_4__ fi; int /*<<< orphan*/  tstamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_8021Q ; 
 TYPE_7__* FUNC0 (struct sk_buff*) ; 
 int VLAN_PRIO_MASK ; 
 int VLAN_VID_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_ring*,union fm10k_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct fm10k_ring*,union fm10k_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_ring*,union fm10k_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC7(struct fm10k_ring *rx_ring,
					     union fm10k_rx_desc *rx_desc,
					     struct sk_buff *skb)
{
	unsigned int len = skb->len;

	FUNC3(rx_ring, rx_desc, skb);

	FUNC2(rx_ring, rx_desc, skb);

	FUNC0(skb)->tstamp = rx_desc->q.timestamp;

	FUNC0(skb)->fi.w.vlan = rx_desc->w.vlan;

	FUNC0(skb)->fi.d.glort = rx_desc->d.glort;

	if (rx_desc->w.vlan) {
		u16 vid = FUNC6(rx_desc->w.vlan);

		if ((vid & VLAN_VID_MASK) != rx_ring->vid)
			FUNC1(skb, FUNC5(ETH_P_8021Q), vid);
		else if (vid & VLAN_PRIO_MASK)
			FUNC1(skb, FUNC5(ETH_P_8021Q),
					       vid & VLAN_PRIO_MASK);
	}

	FUNC4(rx_ring, rx_desc, skb);

	return len;
}