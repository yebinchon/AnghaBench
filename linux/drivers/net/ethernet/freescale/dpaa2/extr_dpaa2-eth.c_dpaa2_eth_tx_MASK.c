#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ sk; } ;
struct rtnl_link_stats64 {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; } ;
struct netdev_queue {int dummy; } ;
struct net_device {scalar_t__ num_tc; } ;
struct dpaa2_fd {int dummy; } ;
struct dpaa2_eth_priv {int (* enqueue ) (struct dpaa2_eth_priv*,struct dpaa2_eth_fq*,struct dpaa2_fd*,scalar_t__) ;struct dpaa2_eth_fq* fq; int /*<<< orphan*/  percpu_extras; int /*<<< orphan*/  percpu_stats; } ;
struct dpaa2_eth_fq {int dummy; } ;
struct dpaa2_eth_drv_stats {int tx_portal_busy; int /*<<< orphan*/  tx_sg_bytes; int /*<<< orphan*/  tx_sg_frames; int /*<<< orphan*/  tx_reallocs; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  fd ;

/* Variables and functions */
 int DPAA2_ETH_ENQUEUE_RETRIES ; 
 int EBUSY ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int FUNC0 (struct dpaa2_eth_priv*,struct sk_buff*,struct dpaa2_fd*) ; 
 int FUNC1 (struct dpaa2_eth_priv*,struct sk_buff*,struct dpaa2_fd*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 unsigned int FUNC3 (struct dpaa2_eth_priv*,struct sk_buff*) ; 
 size_t FUNC4 (struct dpaa2_eth_priv*) ; 
 scalar_t__ FUNC5 (struct dpaa2_fd*) ; 
 int /*<<< orphan*/  FUNC6 (struct dpaa2_eth_priv*,struct dpaa2_eth_fq*,struct dpaa2_fd*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dpaa2_fd*,int /*<<< orphan*/ ,int) ; 
 struct netdev_queue* FUNC8 (struct net_device*,size_t) ; 
 struct dpaa2_eth_priv* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct netdev_queue*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct netdev_queue*,scalar_t__) ; 
 scalar_t__ FUNC12 (struct net_device*,size_t) ; 
 size_t FUNC13 (struct sk_buff*) ; 
 unsigned int FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct sk_buff*) ; 
 struct sk_buff* FUNC16 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,scalar_t__) ; 
 struct sk_buff* FUNC18 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct dpaa2_eth_priv*,struct dpaa2_eth_fq*,struct dpaa2_fd*,scalar_t__) ; 
 void* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct net_device*,struct dpaa2_fd*) ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC23(struct sk_buff *skb, struct net_device *net_dev)
{
	struct dpaa2_eth_priv *priv = FUNC9(net_dev);
	struct dpaa2_fd fd;
	struct rtnl_link_stats64 *percpu_stats;
	struct dpaa2_eth_drv_stats *percpu_extras;
	struct dpaa2_eth_fq *fq;
	struct netdev_queue *nq;
	u16 queue_mapping;
	unsigned int needed_headroom;
	u32 fd_len;
	u8 prio = 0;
	int err, i;

	percpu_stats = FUNC20(priv->percpu_stats);
	percpu_extras = FUNC20(priv->percpu_extras);

	needed_headroom = FUNC3(priv, skb);
	if (FUNC14(skb) < needed_headroom) {
		struct sk_buff *ns;

		ns = FUNC16(skb, needed_headroom);
		if (FUNC22(!ns)) {
			percpu_stats->tx_dropped++;
			goto err_alloc_headroom;
		}
		percpu_extras->tx_reallocs++;

		if (skb->sk)
			FUNC17(ns, skb->sk);

		FUNC2(skb);
		skb = ns;
	}

	/* We'll be holding a back-reference to the skb until Tx Confirmation;
	 * we don't want that overwritten by a concurrent Tx with a cloned skb.
	 */
	skb = FUNC18(skb, GFP_ATOMIC);
	if (FUNC22(!skb)) {
		/* skb_unshare() has already freed the skb */
		percpu_stats->tx_dropped++;
		return NETDEV_TX_OK;
	}

	/* Setup the FD fields */
	FUNC7(&fd, 0, sizeof(fd));

	if (FUNC15(skb)) {
		err = FUNC0(priv, skb, &fd);
		percpu_extras->tx_sg_frames++;
		percpu_extras->tx_sg_bytes += skb->len;
	} else {
		err = FUNC1(priv, skb, &fd);
	}

	if (FUNC22(err)) {
		percpu_stats->tx_dropped++;
		goto err_build_fd;
	}

	/* Tracing point */
	FUNC21(net_dev, &fd);

	/* TxConf FQ selection relies on queue id from the stack.
	 * In case of a forwarded frame from another DPNI interface, we choose
	 * a queue affined to the same core that processed the Rx frame
	 */
	queue_mapping = FUNC13(skb);

	if (net_dev->num_tc) {
		prio = FUNC12(net_dev, queue_mapping);
		/* Hardware interprets priority level 0 as being the highest,
		 * so we need to do a reverse mapping to the netdev tc index
		 */
		prio = net_dev->num_tc - prio - 1;
		/* We have only one FQ array entry for all Tx hardware queues
		 * with the same flow id (but different priority levels)
		 */
		queue_mapping %= FUNC4(priv);
	}
	fq = &priv->fq[queue_mapping];

	fd_len = FUNC5(&fd);
	nq = FUNC8(net_dev, queue_mapping);
	FUNC11(nq, fd_len);

	/* Everything that happens after this enqueues might race with
	 * the Tx confirmation callback for this frame
	 */
	for (i = 0; i < DPAA2_ETH_ENQUEUE_RETRIES; i++) {
		err = priv->enqueue(priv, fq, &fd, prio);
		if (err != -EBUSY)
			break;
	}
	percpu_extras->tx_portal_busy += i;
	if (FUNC22(err < 0)) {
		percpu_stats->tx_errors++;
		/* Clean up everything, including freeing the skb */
		FUNC6(priv, fq, &fd, false);
		FUNC10(nq, 1, fd_len);
	} else {
		percpu_stats->tx_packets++;
		percpu_stats->tx_bytes += fd_len;
	}

	return NETDEV_TX_OK;

err_build_fd:
err_alloc_headroom:
	FUNC2(skb);

	return NETDEV_TX_OK;
}