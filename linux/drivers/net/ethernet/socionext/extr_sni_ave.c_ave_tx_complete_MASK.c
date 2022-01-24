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
struct net_device {int dummy; } ;
struct TYPE_5__ {unsigned int packets; unsigned int bytes; int /*<<< orphan*/  syncp; int /*<<< orphan*/  collisions; int /*<<< orphan*/  errors; } ;
struct TYPE_4__ {int proc_idx; int done_idx; int ndesc; TYPE_3__* desc; } ;
struct ave_private {TYPE_2__ stats_tx; TYPE_1__ tx; } ;
struct TYPE_6__ {int /*<<< orphan*/ * skbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVE_DESCID_TX ; 
 int AVE_STS_EC ; 
 int AVE_STS_LAST ; 
 int AVE_STS_OK ; 
 int AVE_STS_OWC ; 
 int AVE_STS_OWN ; 
 int AVE_STS_PKTLEN_TX_MASK ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ave_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev)
{
	struct ave_private *priv = FUNC3(ndev);
	u32 proc_idx, done_idx, ndesc, cmdsts;
	unsigned int nr_freebuf = 0;
	unsigned int tx_packets = 0;
	unsigned int tx_bytes = 0;

	proc_idx = priv->tx.proc_idx;
	done_idx = priv->tx.done_idx;
	ndesc    = priv->tx.ndesc;

	/* free pre-stored skb from done_idx to proc_idx */
	while (proc_idx != done_idx) {
		cmdsts = FUNC0(ndev, AVE_DESCID_TX, done_idx);

		/* do nothing if owner is HW (==1 for Tx) */
		if (cmdsts & AVE_STS_OWN)
			break;

		/* check Tx status and updates statistics */
		if (cmdsts & AVE_STS_OK) {
			tx_bytes += cmdsts & AVE_STS_PKTLEN_TX_MASK;
			/* success */
			if (cmdsts & AVE_STS_LAST)
				tx_packets++;
		} else {
			/* error */
			if (cmdsts & AVE_STS_LAST) {
				priv->stats_tx.errors++;
				if (cmdsts & (AVE_STS_OWC | AVE_STS_EC))
					priv->stats_tx.collisions++;
			}
		}

		/* release skb */
		if (priv->tx.desc[done_idx].skbs) {
			FUNC1(ndev, &priv->tx.desc[done_idx],
				      DMA_TO_DEVICE);
			FUNC2(priv->tx.desc[done_idx].skbs);
			priv->tx.desc[done_idx].skbs = NULL;
			nr_freebuf++;
		}
		done_idx = (done_idx + 1) % ndesc;
	}

	priv->tx.done_idx = done_idx;

	/* update stats */
	FUNC6(&priv->stats_tx.syncp);
	priv->stats_tx.packets += tx_packets;
	priv->stats_tx.bytes   += tx_bytes;
	FUNC7(&priv->stats_tx.syncp);

	/* wake queue for freeing buffer */
	if (FUNC8(FUNC4(ndev)) && nr_freebuf)
		FUNC5(ndev);

	return nr_freebuf;
}