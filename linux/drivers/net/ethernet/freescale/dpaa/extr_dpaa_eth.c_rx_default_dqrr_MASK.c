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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {unsigned int len; int /*<<< orphan*/  protocol; } ;
struct rtnl_link_stats64 {unsigned int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; } ;
struct qman_portal {int dummy; } ;
struct qman_fq {int dummy; } ;
typedef  struct qm_fd {int status; int /*<<< orphan*/  bpid; } const qm_fd ;
struct qm_dqrr_entry {struct qm_fd const fd; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct net_device {int features; TYPE_1__ dev; } ;
struct dpaa_priv {TYPE_2__* mac_dev; scalar_t__ keygen_in_use; scalar_t__ rx_tstamp; int /*<<< orphan*/  percpu_priv; } ;
struct dpaa_percpu_priv {struct rtnl_link_stats64 stats; } ;
struct dpaa_fq {struct net_device* net_dev; } ;
struct dpaa_bp {int /*<<< orphan*/  percpu_count; int /*<<< orphan*/  size; int /*<<< orphan*/  dev; } ;
typedef  enum qman_cb_dqrr_result { ____Placeholder_qman_cb_dqrr_result } qman_cb_dqrr_result ;
typedef  enum qm_fd_format { ____Placeholder_qm_fd_format } qm_fd_format ;
typedef  enum pkt_hash_types { ____Placeholder_pkt_hash_types } pkt_hash_types ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/ * port; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int FM_FD_STAT_L4CV ; 
 int FM_FD_STAT_RX_ERRORS ; 
 int NETIF_F_RXHASH ; 
 scalar_t__ NET_RX_DROP ; 
 int PKT_HASH_TYPE_L3 ; 
 int PKT_HASH_TYPE_L4 ; 
 size_t RX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct sk_buff* FUNC2 (struct dpaa_priv*,struct qm_fd const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dpaa_bp* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dpaa_percpu_priv*,struct qman_portal*) ; 
 int FUNC7 (struct dpaa_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,struct qm_fd const*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hw ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 () ; 
 struct dpaa_priv* FUNC15 (struct net_device*) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct dpaa_priv*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 void* FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (void*) ; 
 int /*<<< orphan*/  FUNC21 (struct qm_fd const*) ; 
 int qm_fd_contig ; 
 int FUNC22 (struct qm_fd const*) ; 
 int FUNC23 (struct qm_fd const*) ; 
 int qm_fd_sg ; 
 int qman_cb_dqrr_consume ; 
 int qman_cb_dqrr_stop ; 
 struct sk_buff* FUNC24 (struct dpaa_priv*,struct qm_fd const*) ; 
 struct skb_shared_hwtstamps* FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff*,int,int) ; 
 void* FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct net_device*,struct qman_fq*,struct qm_fd const*) ; 
 scalar_t__ FUNC29 (int) ; 

__attribute__((used)) static enum qman_cb_dqrr_result FUNC30(struct qman_portal *portal,
						struct qman_fq *fq,
						const struct qm_dqrr_entry *dq)
{
	struct skb_shared_hwtstamps *shhwtstamps;
	struct rtnl_link_stats64 *percpu_stats;
	struct dpaa_percpu_priv *percpu_priv;
	const struct qm_fd *fd = &dq->fd;
	dma_addr_t addr = FUNC21(fd);
	enum qm_fd_format fd_format;
	struct net_device *net_dev;
	u32 fd_status, hash_offset;
	struct dpaa_bp *dpaa_bp;
	struct dpaa_priv *priv;
	unsigned int skb_len;
	struct sk_buff *skb;
	int *count_ptr;
	void *vaddr;
	u64 ns;

	fd_status = FUNC1(fd->status);
	fd_format = FUNC22(fd);
	net_dev = ((struct dpaa_fq *)fq)->net_dev;
	priv = FUNC15(net_dev);
	dpaa_bp = FUNC5(dq->fd.bpid);
	if (!dpaa_bp)
		return qman_cb_dqrr_consume;

	/* Trace the Rx fd */
	FUNC28(net_dev, fq, &dq->fd);

	percpu_priv = FUNC27(priv->percpu_priv);
	percpu_stats = &percpu_priv->stats;

	if (FUNC29(FUNC6(percpu_priv, portal)))
		return qman_cb_dqrr_stop;

	/* Make sure we didn't run out of buffers */
	if (FUNC29(FUNC7(priv))) {
		/* Unable to refill the buffer pool due to insufficient
		 * system memory. Just release the frame back into the pool,
		 * otherwise we'll soon end up with an empty buffer pool.
		 */
		FUNC8(net_dev, &dq->fd);
		return qman_cb_dqrr_consume;
	}

	if (FUNC29(fd_status & FM_FD_STAT_RX_ERRORS) != 0) {
		if (FUNC14())
			FUNC17(priv, hw, net_dev, "FD status = 0x%08x\n",
				   fd_status & FM_FD_STAT_RX_ERRORS);

		percpu_stats->rx_errors++;
		FUNC8(net_dev, fd);
		return qman_cb_dqrr_consume;
	}

	dpaa_bp = FUNC5(fd->bpid);
	if (!dpaa_bp)
		return qman_cb_dqrr_consume;

	FUNC4(dpaa_bp->dev, addr, dpaa_bp->size, DMA_FROM_DEVICE);

	/* prefetch the first 64 bytes of the frame or the SGT start */
	vaddr = FUNC19(addr);
	FUNC20(vaddr + FUNC23(fd));

	/* The only FD types that we may receive are contig and S/G */
	FUNC0((fd_format != qm_fd_contig) && (fd_format != qm_fd_sg));

	/* Account for either the contig buffer or the SGT buffer (depending on
	 * which case we were in) having been removed from the pool.
	 */
	count_ptr = FUNC27(dpaa_bp->percpu_count);
	(*count_ptr)--;

	if (FUNC12(fd_format == qm_fd_contig))
		skb = FUNC2(priv, fd);
	else
		skb = FUNC24(priv, fd);
	if (!skb)
		return qman_cb_dqrr_consume;

	if (priv->rx_tstamp) {
		shhwtstamps = FUNC25(skb);
		FUNC13(shhwtstamps, 0, sizeof(*shhwtstamps));

		if (!FUNC11(priv->mac_dev->port[RX], vaddr, &ns))
			shhwtstamps->hwtstamp = FUNC18(ns);
		else
			FUNC3(net_dev->dev.parent, "fman_port_get_tstamp failed!\n");
	}

	skb->protocol = FUNC9(skb, net_dev);

	if (net_dev->features & NETIF_F_RXHASH && priv->keygen_in_use &&
	    !FUNC10(priv->mac_dev->port[RX],
					      &hash_offset)) {
		enum pkt_hash_types type;

		/* if L4 exists, it was used in the hash generation */
		type = FUNC1(fd->status) & FM_FD_STAT_L4CV ?
			PKT_HASH_TYPE_L4 : PKT_HASH_TYPE_L3;
		FUNC26(skb, FUNC1(*(u32 *)(vaddr + hash_offset)),
			     type);
	}

	skb_len = skb->len;

	if (FUNC29(FUNC16(skb) == NET_RX_DROP)) {
		percpu_stats->rx_dropped++;
		return qman_cb_dqrr_consume;
	}

	percpu_stats->rx_packets++;
	percpu_stats->rx_bytes += skb_len;

	return qman_cb_dqrr_consume;
}