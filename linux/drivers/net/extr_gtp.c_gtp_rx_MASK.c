#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; TYPE_1__* dev; int /*<<< orphan*/  protocol; } ;
struct pdp_ctx {TYPE_1__* dev; int /*<<< orphan*/  sk; } ;
struct pcpu_sw_netstats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_3__ {int /*<<< orphan*/  tstats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct pdp_ctx*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct pcpu_sw_netstats* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct pdp_ctx *pctx, struct sk_buff *skb,
			unsigned int hdrlen, unsigned int role)
{
	struct pcpu_sw_netstats *stats;

	if (!FUNC1(skb, pctx, hdrlen, role)) {
		FUNC4(pctx->dev, "No PDP ctx for this MS\n");
		return 1;
	}

	/* Get rid of the GTP + UDP headers. */
	if (FUNC2(skb, hdrlen, skb->protocol,
				 !FUNC3(FUNC7(pctx->sk), FUNC0(pctx->dev))))
		return -1;

	FUNC4(pctx->dev, "forwarding packet from GGSN to uplink\n");

	/* Now that the UDP and the GTP header have been removed, set up the
	 * new network header. This is required by the upper layer to
	 * calculate the transport header.
	 */
	FUNC6(skb);

	skb->dev = pctx->dev;

	stats = FUNC8(pctx->dev->tstats);
	FUNC9(&stats->syncp);
	stats->rx_packets++;
	stats->rx_bytes += skb->len;
	FUNC10(&stats->syncp);

	FUNC5(skb);
	return 0;
}