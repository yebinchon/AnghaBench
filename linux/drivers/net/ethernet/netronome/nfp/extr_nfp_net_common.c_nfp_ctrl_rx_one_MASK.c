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
struct nfp_net_rx_ring {struct nfp_net_rx_buf* rxbufs; int /*<<< orphan*/  rd_p; struct nfp_net_rx_desc* rxds; } ;
struct TYPE_2__ {int meta_len_dd; int /*<<< orphan*/  data_len; } ;
struct nfp_net_rx_desc {TYPE_1__ rxd; } ;
struct nfp_net_rx_buf {scalar_t__ dma_addr; scalar_t__ frag; } ;
struct nfp_net_r_vector {unsigned int rx_bytes; int /*<<< orphan*/  rx_sync; int /*<<< orphan*/  rx_pkts; } ;
struct nfp_net_dp {unsigned int rx_dma_off; scalar_t__ rx_offset; int /*<<< orphan*/  fl_bufsz; } ;
struct nfp_net {int /*<<< orphan*/  app; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (struct nfp_net_rx_ring*,int /*<<< orphan*/ ) ; 
 scalar_t__ NFP_NET_CFG_RX_OFFSET_DYNAMIC ; 
 unsigned int NFP_NET_RX_BUF_HEADROOM ; 
 int PCIE_DESC_RX_DD ; 
 unsigned int PCIE_DESC_RX_META_LEN_MASK ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_net*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_net_dp*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_net_dp*,scalar_t__) ; 
 void* FUNC8 (struct nfp_net_dp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct nfp_net_dp*,struct nfp_net_r_vector*,struct nfp_net_rx_ring*,struct nfp_net_rx_buf*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfp_net_dp*,struct nfp_net_rx_ring*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct nfp_net_dp*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int) ; 

__attribute__((used)) static bool
FUNC17(struct nfp_net *nn, struct nfp_net_dp *dp,
		struct nfp_net_r_vector *r_vec, struct nfp_net_rx_ring *rx_ring)
{
	unsigned int meta_len, data_len, meta_off, pkt_len, pkt_off;
	struct nfp_net_rx_buf *rxbuf;
	struct nfp_net_rx_desc *rxd;
	dma_addr_t new_dma_addr;
	struct sk_buff *skb;
	void *new_frag;
	int idx;

	idx = FUNC0(rx_ring, rx_ring->rd_p);

	rxd = &rx_ring->rxds[idx];
	if (!(rxd->rxd.meta_len_dd & PCIE_DESC_RX_DD))
		return false;

	/* Memory barrier to ensure that we won't do other reads
	 * before the DD bit.
	 */
	FUNC2();

	rx_ring->rd_p++;

	rxbuf =	&rx_ring->rxbufs[idx];
	meta_len = rxd->rxd.meta_len_dd & PCIE_DESC_RX_META_LEN_MASK;
	data_len = FUNC3(rxd->rxd.data_len);
	pkt_len = data_len - meta_len;

	pkt_off = NFP_NET_RX_BUF_HEADROOM + dp->rx_dma_off;
	if (dp->rx_offset == NFP_NET_CFG_RX_OFFSET_DYNAMIC)
		pkt_off += meta_len;
	else
		pkt_off += dp->rx_offset;
	meta_off = pkt_off - meta_len;

	/* Stats update */
	FUNC14(&r_vec->rx_sync);
	r_vec->rx_pkts++;
	r_vec->rx_bytes += pkt_len;
	FUNC15(&r_vec->rx_sync);

	FUNC6(dp, rxbuf->dma_addr + meta_off,	data_len);

	if (FUNC16(!FUNC5(nn, rxbuf->frag + meta_off, meta_len))) {
		FUNC11(dp, "incorrect metadata for ctrl packet (%d)\n",
			   meta_len);
		FUNC9(dp, r_vec, rx_ring, rxbuf, NULL);
		return true;
	}

	skb = FUNC1(rxbuf->frag, dp->fl_bufsz);
	if (FUNC16(!skb)) {
		FUNC9(dp, r_vec, rx_ring, rxbuf, NULL);
		return true;
	}
	new_frag = FUNC8(dp, &new_dma_addr);
	if (FUNC16(!new_frag)) {
		FUNC9(dp, r_vec, rx_ring, rxbuf, skb);
		return true;
	}

	FUNC7(dp, rxbuf->dma_addr);

	FUNC10(dp, rx_ring, new_frag, new_dma_addr);

	FUNC13(skb, pkt_off);
	FUNC12(skb, pkt_len);

	FUNC4(nn->app, skb);

	return true;
}