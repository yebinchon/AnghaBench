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
struct sk_buff {int dummy; } ;
struct rtnl_link_stats64 {int /*<<< orphan*/  tx_errors; } ;
struct qm_fd {int /*<<< orphan*/  cmd; } ;
struct netdev_queue {int /*<<< orphan*/  trans_start; } ;
struct net_device {int dummy; } ;
struct dpaa_priv {scalar_t__ tx_tstamp; int /*<<< orphan*/  tx_headroom; int /*<<< orphan*/  percpu_priv; } ;
struct dpaa_percpu_priv {int /*<<< orphan*/  tx_frag_skbuffs; struct rtnl_link_stats64 stats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {scalar_t__ nr_frags; int tx_flags; } ;

/* Variables and functions */
 scalar_t__ DPAA_SGT_MAX_ENTRIES ; 
 int /*<<< orphan*/  FM_FD_CMD_UPD ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int SKBTX_HW_TSTAMP ; 
 int SKBTX_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct dpaa_priv*,struct qm_fd*) ; 
 scalar_t__ FUNC5 (struct dpaa_priv*,struct rtnl_link_stats64*,int const,struct qm_fd*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC6 (int) ; 
 struct netdev_queue* FUNC7 (struct net_device*,int const) ; 
 struct dpaa_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct qm_fd*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sk_buff*) ; 
 int FUNC12 (struct sk_buff*) ; 
 TYPE_1__* FUNC13 (struct sk_buff*) ; 
 int FUNC14 (struct dpaa_priv*,struct sk_buff*,struct qm_fd*,int*) ; 
 int FUNC15 (struct dpaa_priv*,struct sk_buff*,struct qm_fd*) ; 
 struct dpaa_percpu_priv* FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static netdev_tx_t
FUNC18(struct sk_buff *skb, struct net_device *net_dev)
{
	const int queue_mapping = FUNC11(skb);
	bool nonlinear = FUNC12(skb);
	struct rtnl_link_stats64 *percpu_stats;
	struct dpaa_percpu_priv *percpu_priv;
	struct netdev_queue *txq;
	struct dpaa_priv *priv;
	struct qm_fd fd;
	int offset = 0;
	int err = 0;

	priv = FUNC8(net_dev);
	percpu_priv = FUNC16(priv->percpu_priv);
	percpu_stats = &percpu_priv->stats;

	FUNC9(&fd);

	if (!nonlinear) {
		/* We're going to store the skb backpointer at the beginning
		 * of the data buffer, so we need a privately owned skb
		 *
		 * We've made sure skb is not shared in dev->priv_flags,
		 * we need to verify the skb head is not cloned
		 */
		if (FUNC10(skb, priv->tx_headroom))
			goto enomem;

		FUNC0(FUNC12(skb));
	}

	/* MAX_SKB_FRAGS is equal or larger than our dpaa_SGT_MAX_ENTRIES;
	 * make sure we don't feed FMan with more fragments than it supports.
	 */
	if (FUNC17(nonlinear &&
		     (FUNC13(skb)->nr_frags >= DPAA_SGT_MAX_ENTRIES))) {
		/* If the egress skb contains more fragments than we support
		 * we have no choice but to linearize it ourselves.
		 */
		if (FUNC1(skb))
			goto enomem;

		nonlinear = FUNC12(skb);
	}

	if (nonlinear) {
		/* Just create a S/G fd based on the skb */
		err = FUNC15(priv, skb, &fd);
		percpu_priv->tx_frag_skbuffs++;
	} else {
		/* Create a contig FD from this skb */
		err = FUNC14(priv, skb, &fd, &offset);
	}
	if (FUNC17(err < 0))
		goto skb_to_fd_failed;

	txq = FUNC7(net_dev, queue_mapping);

	/* LLTX requires to do our own update of trans_start */
	txq->trans_start = jiffies;

	if (priv->tx_tstamp && FUNC13(skb)->tx_flags & SKBTX_HW_TSTAMP) {
		fd.cmd |= FUNC2(FM_FD_CMD_UPD);
		FUNC13(skb)->tx_flags |= SKBTX_IN_PROGRESS;
	}

	if (FUNC6(FUNC5(priv, percpu_stats, queue_mapping, &fd) == 0))
		return NETDEV_TX_OK;

	FUNC4(priv, &fd);
skb_to_fd_failed:
enomem:
	percpu_stats->tx_errors++;
	FUNC3(skb);
	return NETDEV_TX_OK;
}