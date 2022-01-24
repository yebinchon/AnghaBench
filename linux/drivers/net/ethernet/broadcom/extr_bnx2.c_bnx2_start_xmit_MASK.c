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
typedef  int u64 ;
typedef  int u32 ;
typedef  size_t u16 ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ len; int /*<<< orphan*/  data; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int ihl; } ;
struct bnx2_tx_ring_info {size_t tx_prod; struct bnx2_sw_tx_bd* tx_buf_ring; int /*<<< orphan*/  tx_prod_bseq; int /*<<< orphan*/  tx_bseq_addr; int /*<<< orphan*/  tx_bidx_addr; struct bnx2_tx_bd* tx_desc_ring; } ;
struct bnx2_tx_bd {int tx_bd_haddr_hi; int tx_bd_haddr_lo; int tx_bd_mss_nbytes; int tx_bd_vlan_tag_flags; } ;
struct bnx2_sw_tx_bd {int nr_frags; struct sk_buff* skb; int /*<<< orphan*/  is_gso; } ;
struct bnx2_napi {struct bnx2_tx_ring_info tx_ring; } ;
struct bnx2 {scalar_t__ tx_wake_thresh; TYPE_1__* pdev; struct bnx2_napi* bnx2_napi; } ;
typedef  int /*<<< orphan*/  const skb_frag_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {scalar_t__ nr_frags; int gso_size; int gso_type; int /*<<< orphan*/  const* frags; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ETH_HLEN ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int SKB_GSO_TCPV6 ; 
 int TX_BD_FLAGS_END ; 
 int TX_BD_FLAGS_START ; 
 int TX_BD_FLAGS_SW_FLAGS ; 
 int TX_BD_FLAGS_SW_LSO ; 
 int TX_BD_FLAGS_TCP6_OFF0_MSK ; 
 int TX_BD_FLAGS_TCP6_OFF0_SHL ; 
 int TX_BD_FLAGS_TCP6_OFF4_SHL ; 
 int TX_BD_FLAGS_TCP_UDP_CKSUM ; 
 int TX_BD_FLAGS_VLAN_TAG ; 
 int TX_BD_TCP6_OFF2_SHL ; 
 scalar_t__ FUNC4 (struct bnx2*,struct bnx2_tx_ring_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2_sw_tx_bd*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2_sw_tx_bd*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,char*) ; 
 struct netdev_queue* FUNC15 (struct net_device*,int) ; 
 struct bnx2* FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct netdev_queue*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC19 (struct netdev_queue*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/  const*) ; 
 int FUNC22 (struct sk_buff*) ; 
 int FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 TYPE_2__* FUNC25 (struct sk_buff*) ; 
 int FUNC26 (struct sk_buff*) ; 
 int FUNC27 (struct sk_buff*) ; 
 scalar_t__ FUNC28 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int FUNC30 (struct sk_buff*) ; 
 scalar_t__ FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 () ; 

__attribute__((used)) static netdev_tx_t
FUNC33(struct sk_buff *skb, struct net_device *dev)
{
	struct bnx2 *bp = FUNC16(dev);
	dma_addr_t mapping;
	struct bnx2_tx_bd *txbd;
	struct bnx2_sw_tx_bd *tx_buf;
	u32 len, vlan_tag_flags, last_frag, mss;
	u16 prod, ring_prod;
	int i;
	struct bnx2_napi *bnapi;
	struct bnx2_tx_ring_info *txr;
	struct netdev_queue *txq;

	/*  Determine which tx ring we will be placed on */
	i = FUNC22(skb);
	bnapi = &bp->bnx2_napi[i];
	txr = &bnapi->tx_ring;
	txq = FUNC15(dev, i);

	if (FUNC31(FUNC4(bp, txr) <
	    (FUNC25(skb)->nr_frags + 1))) {
		FUNC18(txq);
		FUNC14(dev, "BUG! Tx ring full when queue awake!\n");

		return NETDEV_TX_BUSY;
	}
	len = FUNC23(skb);
	prod = txr->tx_prod;
	ring_prod = FUNC1(prod);

	vlan_tag_flags = 0;
	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		vlan_tag_flags |= TX_BD_FLAGS_TCP_UDP_CKSUM;
	}

	if (FUNC28(skb)) {
		vlan_tag_flags |=
			(TX_BD_FLAGS_VLAN_TAG | (FUNC27(skb) << 16));
	}

	if ((mss = FUNC25(skb)->gso_size)) {
		u32 tcp_opt_len;
		struct iphdr *iph;

		vlan_tag_flags |= TX_BD_FLAGS_SW_LSO;

		tcp_opt_len = FUNC30(skb);

		if (FUNC25(skb)->gso_type & SKB_GSO_TCPV6) {
			u32 tcp_off = FUNC26(skb) -
				      sizeof(struct ipv6hdr) - ETH_HLEN;

			vlan_tag_flags |= ((tcp_opt_len >> 2) << 8) |
					  TX_BD_FLAGS_SW_FLAGS;
			if (FUNC13(tcp_off == 0))
				vlan_tag_flags &= ~TX_BD_FLAGS_TCP6_OFF0_MSK;
			else {
				tcp_off >>= 3;
				vlan_tag_flags |= ((tcp_off & 0x3) <<
						   TX_BD_FLAGS_TCP6_OFF0_SHL) |
						  ((tcp_off & 0x10) <<
						   TX_BD_FLAGS_TCP6_OFF4_SHL);
				mss |= (tcp_off & 0xc) << TX_BD_TCP6_OFF2_SHL;
			}
		} else {
			iph = FUNC12(skb);
			if (tcp_opt_len || (iph->ihl > 5)) {
				vlan_tag_flags |= ((iph->ihl - 5) +
						   (tcp_opt_len >> 2)) << 8;
			}
		}
	} else
		mss = 0;

	mapping = FUNC6(&bp->pdev->dev, skb->data, len, PCI_DMA_TODEVICE);
	if (FUNC7(&bp->pdev->dev, mapping)) {
		FUNC5(skb);
		return NETDEV_TX_OK;
	}

	tx_buf = &txr->tx_buf_ring[ring_prod];
	tx_buf->skb = skb;
	FUNC9(tx_buf, mapping, mapping);

	txbd = &txr->tx_desc_ring[ring_prod];

	txbd->tx_bd_haddr_hi = (u64) mapping >> 32;
	txbd->tx_bd_haddr_lo = (u64) mapping & 0xffffffff;
	txbd->tx_bd_mss_nbytes = len | (mss << 16);
	txbd->tx_bd_vlan_tag_flags = vlan_tag_flags | TX_BD_FLAGS_START;

	last_frag = FUNC25(skb)->nr_frags;
	tx_buf->nr_frags = last_frag;
	tx_buf->is_gso = FUNC24(skb);

	for (i = 0; i < last_frag; i++) {
		const skb_frag_t *frag = &FUNC25(skb)->frags[i];

		prod = FUNC0(prod);
		ring_prod = FUNC1(prod);
		txbd = &txr->tx_desc_ring[ring_prod];

		len = FUNC21(frag);
		mapping = FUNC20(&bp->pdev->dev, frag, 0, len,
					   DMA_TO_DEVICE);
		if (FUNC7(&bp->pdev->dev, mapping))
			goto dma_error;
		FUNC9(&txr->tx_buf_ring[ring_prod], mapping,
				   mapping);

		txbd->tx_bd_haddr_hi = (u64) mapping >> 32;
		txbd->tx_bd_haddr_lo = (u64) mapping & 0xffffffff;
		txbd->tx_bd_mss_nbytes = len | (mss << 16);
		txbd->tx_bd_vlan_tag_flags = vlan_tag_flags;

	}
	txbd->tx_bd_vlan_tag_flags |= TX_BD_FLAGS_END;

	/* Sync BD data before updating TX mailbox */
	FUNC32();

	FUNC17(txq, skb->len);

	prod = FUNC0(prod);
	txr->tx_prod_bseq += skb->len;

	FUNC3(bp, txr->tx_bidx_addr, prod);
	FUNC2(bp, txr->tx_bseq_addr, txr->tx_prod_bseq);

	txr->tx_prod = prod;

	if (FUNC31(FUNC4(bp, txr) <= MAX_SKB_FRAGS)) {
		FUNC18(txq);

		/* netif_tx_stop_queue() must be done before checking
		 * tx index in bnx2_tx_avail() below, because in
		 * bnx2_tx_int(), we update tx index before checking for
		 * netif_tx_queue_stopped().
		 */
		FUNC29();
		if (FUNC4(bp, txr) > bp->tx_wake_thresh)
			FUNC19(txq);
	}

	return NETDEV_TX_OK;
dma_error:
	/* save value of frag that failed */
	last_frag = i;

	/* start back at beginning and unmap skb */
	prod = txr->tx_prod;
	ring_prod = FUNC1(prod);
	tx_buf = &txr->tx_buf_ring[ring_prod];
	tx_buf->skb = NULL;
	FUNC11(&bp->pdev->dev, FUNC8(tx_buf, mapping),
			 FUNC23(skb), PCI_DMA_TODEVICE);

	/* unmap remaining mapped pages */
	for (i = 0; i < last_frag; i++) {
		prod = FUNC0(prod);
		ring_prod = FUNC1(prod);
		tx_buf = &txr->tx_buf_ring[ring_prod];
		FUNC10(&bp->pdev->dev, FUNC8(tx_buf, mapping),
			       FUNC21(&FUNC25(skb)->frags[i]),
			       PCI_DMA_TODEVICE);
	}

	FUNC5(skb);
	return NETDEV_TX_OK;
}