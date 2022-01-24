#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int proc_idx; int done_idx; int ndesc; TYPE_3__* desc; } ;
struct TYPE_4__ {unsigned int packets; unsigned int bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  errors; } ;
struct ave_private {TYPE_2__ rx; TYPE_1__ stats_rx; } ;
struct TYPE_6__ {struct sk_buff* skbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVE_DESCID_RX ; 
 int AVE_STS_CSER ; 
 int AVE_STS_CSSV ; 
 int AVE_STS_OK ; 
 int AVE_STS_OWN ; 
 int AVE_STS_PKTLEN_RX_MASK ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct net_device*) ; 
 struct ave_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev, int num)
{
	struct ave_private *priv = FUNC4(ndev);
	unsigned int rx_packets = 0;
	unsigned int rx_bytes = 0;
	u32 proc_idx, done_idx;
	struct sk_buff *skb;
	unsigned int pktlen;
	int restpkt, npkts;
	u32 ndesc, cmdsts;

	proc_idx = priv->rx.proc_idx;
	done_idx = priv->rx.done_idx;
	ndesc    = priv->rx.ndesc;
	restpkt  = ((proc_idx + ndesc - 1) - done_idx) % ndesc;

	for (npkts = 0; npkts < num; npkts++) {
		/* we can't receive more packet, so fill desc quickly */
		if (--restpkt < 0)
			break;

		cmdsts = FUNC0(ndev, AVE_DESCID_RX, proc_idx);

		/* do nothing if owner is HW (==0 for Rx) */
		if (!(cmdsts & AVE_STS_OWN))
			break;

		if (!(cmdsts & AVE_STS_OK)) {
			priv->stats_rx.errors++;
			proc_idx = (proc_idx + 1) % ndesc;
			continue;
		}

		pktlen = cmdsts & AVE_STS_PKTLEN_RX_MASK;

		/* get skbuff for rx */
		skb = priv->rx.desc[proc_idx].skbs;
		priv->rx.desc[proc_idx].skbs = NULL;

		FUNC1(ndev, &priv->rx.desc[proc_idx], DMA_FROM_DEVICE);

		skb->dev = ndev;
		FUNC6(skb, pktlen);
		skb->protocol = FUNC3(skb, ndev);

		if ((cmdsts & AVE_STS_CSSV) && (!(cmdsts & AVE_STS_CSER)))
			skb->ip_summed = CHECKSUM_UNNECESSARY;

		rx_packets++;
		rx_bytes += pktlen;

		FUNC5(skb);

		proc_idx = (proc_idx + 1) % ndesc;
	}

	priv->rx.proc_idx = proc_idx;

	/* update stats */
	FUNC7(&priv->stats_rx.syncp);
	priv->stats_rx.packets += rx_packets;
	priv->stats_rx.bytes   += rx_bytes;
	FUNC8(&priv->stats_rx.syncp);

	/* refill the Rx buffers */
	while (proc_idx != done_idx) {
		if (FUNC2(ndev, done_idx))
			break;
		done_idx = (done_idx + 1) % ndesc;
	}

	priv->rx.done_idx = done_idx;

	return npkts;
}