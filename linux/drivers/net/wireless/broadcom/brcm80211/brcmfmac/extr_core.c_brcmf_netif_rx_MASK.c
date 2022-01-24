#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ pkt_type; int /*<<< orphan*/  protocol; scalar_t__ len; } ;
struct brcmf_if {TYPE_2__* ndev; TYPE_4__* drvr; } ;
struct TYPE_8__ {TYPE_3__* settings; } ;
struct TYPE_7__ {int /*<<< orphan*/  iapp; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  multicast; } ;
struct TYPE_6__ {int flags; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int IFF_UP ; 
 scalar_t__ PACKET_MULTICAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct brcmf_if *ifp, struct sk_buff *skb)
{
	/* Most of Broadcom's firmwares send 802.11f ADD frame every time a new
	 * STA connects to the AP interface. This is an obsoleted standard most
	 * users don't use, so don't pass these frames up unless requested.
	 */
	if (!ifp->drvr->settings->iapp && FUNC1(skb)) {
		FUNC2(skb);
		return;
	}

	if (skb->pkt_type == PACKET_MULTICAST)
		ifp->ndev->stats.multicast++;

	if (!(ifp->ndev->flags & IFF_UP)) {
		FUNC2(skb);
		return;
	}

	ifp->ndev->stats.rx_bytes += skb->len;
	ifp->ndev->stats.rx_packets++;

	FUNC0(DATA, "rx proto=0x%X\n", FUNC6(skb->protocol));
	if (FUNC3())
		FUNC4(skb);
	else
		/* If the receive is not processed inside an ISR,
		 * the softirqd must be woken explicitly to service
		 * the NET_RX_SOFTIRQ.  This is handled by netif_rx_ni().
		 */
		FUNC5(skb);
}