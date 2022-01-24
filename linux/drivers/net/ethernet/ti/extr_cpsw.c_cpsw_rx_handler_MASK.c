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
struct xdp_buff {void* data_hard_start; void* data; void* data_end; int /*<<< orphan*/ * rxq; } ;
struct sk_buff {int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct page_pool {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_7__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_3__ stats; } ;
struct cpsw_priv {scalar_t__ rx_ts_enabled; int /*<<< orphan*/ * xdp_rxq; scalar_t__ xdp_prog; } ;
struct cpsw_meta_xdp {int ch; struct net_device* ndev; } ;
struct TYPE_6__ {scalar_t__ dual_emac; } ;
struct cpsw_common {int rx_packet_max; TYPE_4__* rxv; int /*<<< orphan*/  cpts; scalar_t__ usage_count; TYPE_2__ data; struct page_pool** page_pool; TYPE_1__* slaves; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  ch; } ;
struct TYPE_5__ {struct net_device* ndev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CPDMA_RX_VLAN_ENCAP ; 
 int CPSW_HEADROOM ; 
 int CPSW_RX_VLAN_ENCAP_HDR_SIZE ; 
 int CPSW_XDP_PASS ; 
 int CPSW_XMETA_OFFSET ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct sk_buff* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct page*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct cpsw_priv*,int,struct xdp_buff*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct net_device*) ; 
 struct cpsw_common* FUNC9 (struct net_device*) ; 
 struct cpsw_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 void* FUNC13 (struct page*) ; 
 struct page* FUNC14 (struct page_pool*) ; 
 scalar_t__ FUNC15 (struct page*) ; 
 int /*<<< orphan*/  FUNC16 (struct page_pool*,struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct page_pool*,struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (struct xdp_buff*) ; 

__attribute__((used)) static void FUNC22(void *token, int len, int status)
{
	struct page		*new_page, *page = token;
	void			*pa = FUNC13(page);
	struct cpsw_meta_xdp	*xmeta = pa + CPSW_XMETA_OFFSET;
	struct cpsw_common	*cpsw = FUNC9(xmeta->ndev);
	int			pkt_size = cpsw->rx_packet_max;
	int			ret = 0, port, ch = xmeta->ch;
	int			headroom = CPSW_HEADROOM;
	struct net_device	*ndev = xmeta->ndev;
	struct cpsw_priv	*priv;
	struct page_pool	*pool;
	struct sk_buff		*skb;
	struct xdp_buff		xdp;
	dma_addr_t		dma;

	if (cpsw->data.dual_emac && status >= 0) {
		port = FUNC0(status);
		if (port)
			ndev = cpsw->slaves[--port].ndev;
	}

	priv = FUNC10(ndev);
	pool = cpsw->page_pool[ch];
	if (FUNC20(status < 0) || FUNC20(!FUNC12(ndev))) {
		/* In dual emac mode check for all interfaces */
		if (cpsw->data.dual_emac && cpsw->usage_count &&
		    (status >= 0)) {
			/* The packet received is for the interface which
			 * is already down and the other interface is up
			 * and running, instead of freeing which results
			 * in reducing of the number of rx descriptor in
			 * DMA engine, requeue page back to cpdma.
			 */
			new_page = page;
			goto requeue;
		}

		/* the interface is going down, pages are purged */
		FUNC16(pool, page);
		return;
	}

	new_page = FUNC14(pool);
	if (FUNC20(!new_page)) {
		new_page = page;
		ndev->stats.rx_dropped++;
		goto requeue;
	}

	if (priv->xdp_prog) {
		if (status & CPDMA_RX_VLAN_ENCAP) {
			xdp.data = pa + CPSW_HEADROOM +
				   CPSW_RX_VLAN_ENCAP_HDR_SIZE;
			xdp.data_end = xdp.data + len -
				       CPSW_RX_VLAN_ENCAP_HDR_SIZE;
		} else {
			xdp.data = pa + CPSW_HEADROOM;
			xdp.data_end = xdp.data + len;
		}

		FUNC21(&xdp);

		xdp.data_hard_start = pa;
		xdp.rxq = &priv->xdp_rxq[ch];

		ret = FUNC4(priv, ch, &xdp, page);
		if (ret != CPSW_XDP_PASS)
			goto requeue;

		/* XDP prog might have changed packet data and boundaries */
		len = xdp.data_end - xdp.data;
		headroom = xdp.data - xdp.data_hard_start;

		/* XDP prog can modify vlan tag, so can't use encap header */
		status &= ~CPDMA_RX_VLAN_ENCAP;
	}

	/* pass skb to netstack if no XDP prog or returned XDP_PASS */
	skb = FUNC2(pa, FUNC6(pkt_size));
	if (!skb) {
		ndev->stats.rx_dropped++;
		FUNC16(pool, page);
		goto requeue;
	}

	FUNC19(skb, headroom);
	FUNC18(skb, len);
	skb->dev = ndev;
	if (status & CPDMA_RX_VLAN_ENCAP)
		FUNC5(skb);
	if (priv->rx_ts_enabled)
		FUNC7(cpsw->cpts, skb);
	skb->protocol = FUNC8(skb, ndev);

	/* unmap page as no netstack skb page recycling */
	FUNC17(pool, page);
	FUNC11(skb);

	ndev->stats.rx_bytes += len;
	ndev->stats.rx_packets++;

requeue:
	xmeta = FUNC13(new_page) + CPSW_XMETA_OFFSET;
	xmeta->ndev = ndev;
	xmeta->ch = ch;

	dma = FUNC15(new_page) + CPSW_HEADROOM;
	ret = FUNC3(cpsw->rxv[ch].ch, new_page, dma,
				       pkt_size, 0);
	if (ret < 0) {
		FUNC1(ret == -ENOMEM);
		FUNC16(pool, new_page);
	}
}