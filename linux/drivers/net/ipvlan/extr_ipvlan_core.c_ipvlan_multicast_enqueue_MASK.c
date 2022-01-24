#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ protocol; TYPE_2__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct ipvl_port {TYPE_1__ backlog; int /*<<< orphan*/  wq; } ;
struct TYPE_7__ {int tx_pkt; } ;
struct TYPE_6__ {int /*<<< orphan*/  rx_dropped; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_PAUSE ; 
 scalar_t__ IPVLAN_QBACKLOG_LIMIT ; 
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct ipvl_port *port,
				     struct sk_buff *skb, bool tx_pkt)
{
	if (skb->protocol == FUNC4(ETH_P_PAUSE)) {
		FUNC5(skb);
		return;
	}

	/* Record that the deferred packet is from TX or RX path. By
	 * looking at mac-addresses on packet will lead to erronus decisions.
	 * (This would be true for a loopback-mode on master device or a
	 * hair-pin mode of the switch.)
	 */
	FUNC0(skb)->tx_pkt = tx_pkt;

	FUNC8(&port->backlog.lock);
	if (FUNC7(&port->backlog) < IPVLAN_QBACKLOG_LIMIT) {
		if (skb->dev)
			FUNC3(skb->dev);
		FUNC1(&port->backlog, skb);
		FUNC9(&port->backlog.lock);
		FUNC6(&port->wq);
	} else {
		FUNC9(&port->backlog.lock);
		FUNC2(&skb->dev->rx_dropped);
		FUNC5(skb);
	}
}