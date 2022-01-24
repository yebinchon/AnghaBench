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
struct sk_buff {int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * proto; struct sk_buff* skb; } ;
struct arcnet_local {TYPE_4__ outgoing; } ;
struct TYPE_5__ {int ack; } ;
struct TYPE_6__ {int /*<<< orphan*/ * cookie; TYPE_1__ mes; scalar_t__ proto; } ;
struct TYPE_7__ {TYPE_2__ cap; } ;
struct archdr {TYPE_3__ soft; } ;
struct arc_cap {int dummy; } ;

/* Variables and functions */
 scalar_t__ ARC_HDR_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D_DURING ; 
 int /*<<< orphan*/  D_PROTO ; 
 int /*<<< orphan*/  D_SKB ; 
 int /*<<< orphan*/  ETH_P_ARCNET ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net_device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct sk_buff*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct arcnet_local* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct archdr*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev, int acked)
{
	struct arcnet_local *lp = FUNC6(dev);
	struct sk_buff *ackskb;
	struct archdr *ackpkt;
	int length = sizeof(struct arc_cap);

	FUNC2(D_DURING, dev, "capmode: ack_tx: protocol: %x: result: %d\n",
		   lp->outgoing.skb->protocol, acked);

	if (FUNC0(D_SKB))
		FUNC3(dev, lp->outgoing.skb, "ack_tx");

	/* Now alloc a skb to send back up through the layers: */
	ackskb = FUNC1(length + ARC_HDR_SIZE, GFP_ATOMIC);
	if (!ackskb)
		goto free_outskb;

	FUNC10(ackskb, length + ARC_HDR_SIZE);
	ackskb->dev = dev;

	FUNC11(ackskb);
	ackpkt = (struct archdr *)FUNC9(ackskb);
	/* skb_pull(ackskb, ARC_HDR_SIZE); */

	FUNC8(lp->outgoing.skb, ackpkt,
				  ARC_HDR_SIZE + sizeof(struct arc_cap));
	ackpkt->soft.cap.proto = 0; /* using protocol 0 for acknowledge */
	ackpkt->soft.cap.mes.ack = acked;

	FUNC2(D_PROTO, dev, "Acknowledge for cap packet %x.\n",
		   *((int *)&ackpkt->soft.cap.cookie[0]));

	ackskb->protocol = FUNC4(ETH_P_ARCNET);

	if (FUNC0(D_SKB))
		FUNC3(dev, ackskb, "ack_tx_recv");
	FUNC7(ackskb);

free_outskb:
	FUNC5(lp->outgoing.skb);
	lp->outgoing.proto = NULL;
			/* We are always finished when in this protocol */

	return 0;
}