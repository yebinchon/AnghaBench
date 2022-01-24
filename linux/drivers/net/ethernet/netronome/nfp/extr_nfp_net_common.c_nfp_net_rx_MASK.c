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
typedef  int u32 ;
struct xdp_buff {void* data_hard_start; void* data; void* data_meta; void* data_end; int /*<<< orphan*/ * rxq; } ;
struct sk_buff {int decrypted; struct net_device* dev; int /*<<< orphan*/  protocol; int /*<<< orphan*/  mark; } ;
struct nfp_net_tx_ring {scalar_t__ wr_p; scalar_t__ rd_p; scalar_t__ wr_ptr_add; } ;
struct nfp_net_rx_ring {struct nfp_net_r_vector* r_vec; int /*<<< orphan*/  idx; struct nfp_net_rx_buf* rxbufs; int /*<<< orphan*/  rd_p; struct nfp_net_rx_desc* rxds; int /*<<< orphan*/  xdp_rxq; } ;
struct TYPE_4__ {int meta_len_dd; int flags; int /*<<< orphan*/  vlan; int /*<<< orphan*/  data_len; } ;
struct nfp_net_rx_desc {TYPE_2__ rxd; } ;
struct nfp_net_rx_buf {void* frag; scalar_t__ dma_addr; } ;
struct nfp_net_r_vector {unsigned int rx_bytes; int /*<<< orphan*/  napi; int /*<<< orphan*/  rx_sync; int /*<<< orphan*/  hw_tls_rx; int /*<<< orphan*/  rx_pkts; struct nfp_net_tx_ring* xdp_ring; TYPE_1__* nfp_net; } ;
struct nfp_net_dp {unsigned int fl_bufsz; int rx_dma_off; unsigned int rx_offset; struct net_device* netdev; int /*<<< orphan*/  chained_metadata_format; int /*<<< orphan*/  xdp_prog; } ;
struct nfp_net {int /*<<< orphan*/  app; } ;
struct nfp_meta_parsed {scalar_t__ portid; int /*<<< orphan*/  hash_type; int /*<<< orphan*/  hash; int /*<<< orphan*/  mark; } ;
struct net_device {int dummy; } ;
struct bpf_prog {int dummy; } ;
typedef  int /*<<< orphan*/  meta ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_3__ {struct nfp_net_dp dp; } ;

/* Variables and functions */
 int FUNC0 (struct nfp_net_rx_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 scalar_t__ NFP_META_PORT_ID_CTRL ; 
 unsigned int NFP_NET_CFG_RX_OFFSET_DYNAMIC ; 
 unsigned int NFP_NET_MAX_PREPEND ; 
 int NFP_NET_RX_BUF_HEADROOM ; 
 unsigned int PAGE_SIZE ; 
 int PCIE_DESC_RX_DD ; 
 int PCIE_DESC_RX_DECRYPTED ; 
 unsigned int PCIE_DESC_RX_META_LEN_MASK ; 
 int PCIE_DESC_RX_VLAN ; 
 struct bpf_prog* FUNC1 (int /*<<< orphan*/ ) ; 
#define  XDP_ABORTED 131 
#define  XDP_DROP 130 
#define  XDP_PASS 129 
#define  XDP_TX 128 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (struct bpf_prog*,struct xdp_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct sk_buff* FUNC6 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct nfp_meta_parsed*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct nfp_net* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,void*,unsigned int) ; 
 struct net_device* FUNC17 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct nfp_net_dp*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct nfp_net_dp*,scalar_t__) ; 
 void* FUNC20 (struct nfp_net_dp*,scalar_t__*) ; 
 void* FUNC21 (struct net_device*,struct nfp_meta_parsed*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (struct nfp_net_dp*,struct nfp_net_r_vector*,struct nfp_net_rx_desc*,struct nfp_meta_parsed*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct nfp_net_dp*,struct nfp_net_r_vector*,struct nfp_net_rx_ring*,struct nfp_net_rx_buf*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct nfp_net_dp*,struct nfp_net_rx_ring*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (struct net_device*,struct nfp_meta_parsed*,void*,struct nfp_net_rx_desc*) ; 
 int /*<<< orphan*/  FUNC26 (struct nfp_net_dp*,struct nfp_net_rx_ring*,struct nfp_net_tx_ring*,struct nfp_net_rx_buf*,unsigned int,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC27 (struct nfp_net_tx_ring*) ; 
 int /*<<< orphan*/  FUNC28 (struct nfp_net_tx_ring*) ; 
 scalar_t__ FUNC29 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC30 (struct net_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC31 (struct nfp_net_dp*,char*,...) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC35 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC36 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC38 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC39 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (struct net_device*,struct bpf_prog*,int) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC43 (int) ; 

__attribute__((used)) static int FUNC44(struct nfp_net_rx_ring *rx_ring, int budget)
{
	struct nfp_net_r_vector *r_vec = rx_ring->r_vec;
	struct nfp_net_dp *dp = &r_vec->nfp_net->dp;
	struct nfp_net_tx_ring *tx_ring;
	struct bpf_prog *xdp_prog;
	bool xdp_tx_cmpl = false;
	unsigned int true_bufsz;
	struct sk_buff *skb;
	int pkts_polled = 0;
	struct xdp_buff xdp;
	int idx;

	FUNC32();
	xdp_prog = FUNC1(dp->xdp_prog);
	true_bufsz = xdp_prog ? PAGE_SIZE : dp->fl_bufsz;
	xdp.rxq = &rx_ring->xdp_rxq;
	tx_ring = r_vec->xdp_ring;

	while (pkts_polled < budget) {
		unsigned int meta_len, data_len, meta_off, pkt_len, pkt_off;
		struct nfp_net_rx_buf *rxbuf;
		struct nfp_net_rx_desc *rxd;
		struct nfp_meta_parsed meta;
		bool redir_egress = false;
		struct net_device *netdev;
		dma_addr_t new_dma_addr;
		u32 meta_len_xdp = 0;
		void *new_frag;

		idx = FUNC0(rx_ring, rx_ring->rd_p);

		rxd = &rx_ring->rxds[idx];
		if (!(rxd->rxd.meta_len_dd & PCIE_DESC_RX_DD))
			break;

		/* Memory barrier to ensure that we won't do other reads
		 * before the DD bit.
		 */
		FUNC8();

		FUNC13(&meta, 0, sizeof(meta));

		rx_ring->rd_p++;
		pkts_polled++;

		rxbuf =	&rx_ring->rxbufs[idx];
		/*         < meta_len >
		 *  <-- [rx_offset] -->
		 *  ---------------------------------------------------------
		 * | [XX] |  metadata  |             packet           | XXXX |
		 *  ---------------------------------------------------------
		 *         <---------------- data_len --------------->
		 *
		 * The rx_offset is fixed for all packets, the meta_len can vary
		 * on a packet by packet basis. If rx_offset is set to zero
		 * (_RX_OFFSET_DYNAMIC) metadata starts at the beginning of the
		 * buffer and is immediately followed by the packet (no [XX]).
		 */
		meta_len = rxd->rxd.meta_len_dd & PCIE_DESC_RX_META_LEN_MASK;
		data_len = FUNC11(rxd->rxd.data_len);
		pkt_len = data_len - meta_len;

		pkt_off = NFP_NET_RX_BUF_HEADROOM + dp->rx_dma_off;
		if (dp->rx_offset == NFP_NET_CFG_RX_OFFSET_DYNAMIC)
			pkt_off += meta_len;
		else
			pkt_off += dp->rx_offset;
		meta_off = pkt_off - meta_len;

		/* Stats update */
		FUNC41(&r_vec->rx_sync);
		r_vec->rx_pkts++;
		r_vec->rx_bytes += pkt_len;
		FUNC42(&r_vec->rx_sync);

		if (FUNC43(meta_len > NFP_NET_MAX_PREPEND ||
			     (dp->rx_offset && meta_len > dp->rx_offset))) {
			FUNC31(dp, "oversized RX packet metadata %u\n",
				   meta_len);
			FUNC23(dp, r_vec, rx_ring, rxbuf, NULL);
			continue;
		}

		FUNC18(dp, rxbuf->dma_addr + meta_off,
					data_len);

		if (!dp->chained_metadata_format) {
			FUNC25(dp->netdev, &meta,
					      rxbuf->frag + meta_off, rxd);
		} else if (meta_len) {
			void *end;

			end = FUNC21(dp->netdev, &meta,
						 rxbuf->frag + meta_off,
						 meta_len);
			if (FUNC43(end != rxbuf->frag + pkt_off)) {
				FUNC31(dp, "invalid RX packet metadata\n");
				FUNC23(dp, r_vec, rx_ring, rxbuf,
						NULL);
				continue;
			}
		}

		if (xdp_prog && !meta.portid) {
			void *orig_data = rxbuf->frag + pkt_off;
			unsigned int dma_off;
			int act;

			xdp.data_hard_start = rxbuf->frag + NFP_NET_RX_BUF_HEADROOM;
			xdp.data = orig_data;
			xdp.data_meta = orig_data;
			xdp.data_end = orig_data + pkt_len;

			act = FUNC4(xdp_prog, &xdp);

			pkt_len = xdp.data_end - xdp.data;
			pkt_off += xdp.data - orig_data;

			switch (act) {
			case XDP_PASS:
				meta_len_xdp = xdp.data - xdp.data_meta;
				break;
			case XDP_TX:
				dma_off = pkt_off - NFP_NET_RX_BUF_HEADROOM;
				if (FUNC43(!FUNC26(dp, rx_ring,
								 tx_ring, rxbuf,
								 dma_off,
								 pkt_len,
								 &xdp_tx_cmpl)))
					FUNC40(dp->netdev,
							    xdp_prog, act);
				continue;
			default:
				FUNC5(act);
				/* fall through */
			case XDP_ABORTED:
				FUNC40(dp->netdev, xdp_prog, act);
				/* fall through */
			case XDP_DROP:
				FUNC24(dp, rx_ring, rxbuf->frag,
						    rxbuf->dma_addr);
				continue;
			}
		}

		if (FUNC12(!meta.portid)) {
			netdev = dp->netdev;
		} else if (meta.portid == NFP_META_PORT_ID_CTRL) {
			struct nfp_net *nn = FUNC15(dp->netdev);

			FUNC16(nn->app, rxbuf->frag + pkt_off,
					    pkt_len);
			FUNC24(dp, rx_ring, rxbuf->frag,
					    rxbuf->dma_addr);
			continue;
		} else {
			struct nfp_net *nn;

			nn = FUNC15(dp->netdev);
			netdev = FUNC17(nn->app, meta.portid,
						 &redir_egress);
			if (FUNC43(!netdev)) {
				FUNC23(dp, r_vec, rx_ring, rxbuf,
						NULL);
				continue;
			}

			if (FUNC29(netdev))
				FUNC30(netdev, pkt_len);
		}

		skb = FUNC6(rxbuf->frag, true_bufsz);
		if (FUNC43(!skb)) {
			FUNC23(dp, r_vec, rx_ring, rxbuf, NULL);
			continue;
		}
		new_frag = FUNC20(dp, &new_dma_addr);
		if (FUNC43(!new_frag)) {
			FUNC23(dp, r_vec, rx_ring, rxbuf, skb);
			continue;
		}

		FUNC19(dp, rxbuf->dma_addr);

		FUNC24(dp, rx_ring, new_frag, new_dma_addr);

		FUNC37(skb, pkt_off);
		FUNC35(skb, pkt_len);

		skb->mark = meta.mark;
		FUNC39(skb, meta.hash, meta.hash_type);

		FUNC36(skb, rx_ring->idx);
		skb->protocol = FUNC9(skb, netdev);

		FUNC22(dp, r_vec, rxd, &meta, skb);

#ifdef CONFIG_TLS_DEVICE
		if (rxd->rxd.flags & PCIE_DESC_RX_DECRYPTED) {
			skb->decrypted = true;
			u64_stats_update_begin(&r_vec->rx_sync);
			r_vec->hw_tls_rx++;
			u64_stats_update_end(&r_vec->rx_sync);
		}
#endif

		if (rxd->rxd.flags & PCIE_DESC_RX_VLAN)
			FUNC3(skb, FUNC10(ETH_P_8021Q),
					       FUNC11(rxd->rxd.vlan));
		if (meta_len_xdp)
			FUNC34(skb, meta_len_xdp);

		if (FUNC12(!redir_egress)) {
			FUNC14(&rx_ring->r_vec->napi, skb);
		} else {
			skb->dev = netdev;
			FUNC38(skb);
			FUNC2(skb, ETH_HLEN);
			FUNC7(skb);
		}
	}

	if (xdp_prog) {
		if (tx_ring->wr_ptr_add)
			FUNC27(tx_ring);
		else if (FUNC43(tx_ring->wr_p != tx_ring->rd_p) &&
			 !xdp_tx_cmpl)
			if (!FUNC28(tx_ring))
				pkts_polled = budget;
	}
	FUNC33();

	return pkts_polled;
}