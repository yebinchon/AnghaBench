#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  data; } ;
struct l2_fhdr {unsigned int l2_fhdr_pkt_len; int l2_fhdr_status; unsigned int l2_fhdr_ip_xsum; int /*<<< orphan*/  l2_fhdr_hash; int /*<<< orphan*/  l2_fhdr_vlan_tag; } ;
struct bnx2_sw_bd {int /*<<< orphan*/ * data; } ;
struct bnx2_rx_ring_info {scalar_t__ rx_cons; scalar_t__ rx_prod; scalar_t__ rx_pg_prod; int /*<<< orphan*/  rx_prod_bseq; int /*<<< orphan*/  rx_bseq_addr; int /*<<< orphan*/  rx_bidx_addr; int /*<<< orphan*/  rx_pg_bidx_addr; struct bnx2_sw_bd* rx_buf_ring; } ;
struct bnx2_napi {int /*<<< orphan*/  napi; struct bnx2_rx_ring_info rx_ring; } ;
struct bnx2 {unsigned int rx_jumbo_thresh; unsigned int rx_copy_thresh; int rx_mode; struct bnx2_napi* bnx2_napi; TYPE_2__* dev; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_5__ {unsigned int mtu; int features; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BNX2_EMAC_RX_MODE_KEEP_VLAN_TAG ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int BNX2_RX_COPY_THRESH ; 
 int BNX2_RX_OFFSET ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 unsigned int ETH_HLEN ; 
 int ETH_P_8021AD ; 
 int ETH_P_8021Q ; 
 int L2_FHDR_ERRORS_ALIGNMENT ; 
 int L2_FHDR_ERRORS_BAD_CRC ; 
 int L2_FHDR_ERRORS_GIANT_FRAME ; 
 int L2_FHDR_ERRORS_PHY_DECODE ; 
 int L2_FHDR_ERRORS_TCP_XSUM ; 
 int L2_FHDR_ERRORS_TOO_SHORT ; 
 int L2_FHDR_ERRORS_UDP_XSUM ; 
 int L2_FHDR_STATUS_L2_VLAN_TAG ; 
 int L2_FHDR_STATUS_SPLIT ; 
 int L2_FHDR_STATUS_TCP_SEGMENT ; 
 int L2_FHDR_STATUS_UDP_DATAGRAM ; 
 int L2_FHDR_STATUS_USE_RXHASH ; 
 int NETIF_F_RXCSUM ; 
 int NETIF_F_RXHASH ; 
 int FUNC4 (unsigned int) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PKT_HASH_TYPE_L3 ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct bnx2_napi*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2*,struct bnx2_rx_ring_info*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2*,struct bnx2_rx_ring_info*,int /*<<< orphan*/ *,int) ; 
 struct sk_buff* FUNC9 (struct bnx2*,struct bnx2_rx_ring_info*,int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2_sw_bd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct sk_buff*,TYPE_2__*) ; 
 struct l2_fhdr* FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC19 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct l2_fhdr*) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int) ; 

__attribute__((used)) static int
FUNC28(struct bnx2 *bp, struct bnx2_napi *bnapi, int budget)
{
	struct bnx2_rx_ring_info *rxr = &bnapi->rx_ring;
	u16 hw_cons, sw_cons, sw_ring_cons, sw_prod, sw_ring_prod;
	struct l2_fhdr *rx_hdr;
	int rx_pkt = 0, pg_ring_used = 0;

	if (budget <= 0)
		return rx_pkt;

	hw_cons = FUNC6(bnapi);
	sw_cons = rxr->rx_cons;
	sw_prod = rxr->rx_prod;

	/* Memory barrier necessary as speculative reads of the rx
	 * buffer can be ahead of the index in the status block
	 */
	FUNC21();
	while (sw_cons != hw_cons) {
		unsigned int len, hdr_len;
		u32 status;
		struct bnx2_sw_bd *rx_buf, *next_rx_buf;
		struct sk_buff *skb;
		dma_addr_t dma_addr;
		u8 *data;
		u16 next_ring_idx;

		sw_ring_cons = FUNC1(sw_cons);
		sw_ring_prod = FUNC1(sw_prod);

		rx_buf = &rxr->rx_buf_ring[sw_ring_cons];
		data = rx_buf->data;
		rx_buf->data = NULL;

		rx_hdr = FUNC14(data);
		FUNC20(rx_hdr);

		dma_addr = FUNC12(rx_buf, mapping);

		FUNC11(&bp->pdev->dev, dma_addr,
			BNX2_RX_OFFSET + BNX2_RX_COPY_THRESH,
			PCI_DMA_FROMDEVICE);

		next_ring_idx = FUNC1(FUNC0(sw_cons));
		next_rx_buf = &rxr->rx_buf_ring[next_ring_idx];
		FUNC20(FUNC14(next_rx_buf->data));

		len = rx_hdr->l2_fhdr_pkt_len;
		status = rx_hdr->l2_fhdr_status;

		hdr_len = 0;
		if (status & L2_FHDR_STATUS_SPLIT) {
			hdr_len = rx_hdr->l2_fhdr_ip_xsum;
			pg_ring_used = 1;
		} else if (len > bp->rx_jumbo_thresh) {
			hdr_len = bp->rx_jumbo_thresh;
			pg_ring_used = 1;
		}

		if (FUNC27(status & (L2_FHDR_ERRORS_BAD_CRC |
				       L2_FHDR_ERRORS_PHY_DECODE |
				       L2_FHDR_ERRORS_ALIGNMENT |
				       L2_FHDR_ERRORS_TOO_SHORT |
				       L2_FHDR_ERRORS_GIANT_FRAME))) {

			FUNC7(bp, rxr, data, sw_ring_cons,
					  sw_ring_prod);
			if (pg_ring_used) {
				int pages;

				pages = FUNC4(len - hdr_len) >> PAGE_SHIFT;

				FUNC8(bp, rxr, NULL, pages);
			}
			goto next_rx;
		}

		len -= 4;

		if (len <= bp->rx_copy_thresh) {
			skb = FUNC19(bp->dev, len + 6);
			if (!skb) {
				FUNC7(bp, rxr, data, sw_ring_cons,
						  sw_ring_prod);
				goto next_rx;
			}

			/* aligned copy */
			FUNC17(skb->data,
			       (u8 *)rx_hdr + BNX2_RX_OFFSET - 6,
			       len + 6);
			FUNC25(skb, 6);
			FUNC23(skb, len);

			FUNC7(bp, rxr, data,
				sw_ring_cons, sw_ring_prod);

		} else {
			skb = FUNC9(bp, rxr, data, len, hdr_len, dma_addr,
					  (sw_ring_cons << 16) | sw_ring_prod);
			if (!skb)
				goto next_rx;
		}
		if ((status & L2_FHDR_STATUS_L2_VLAN_TAG) &&
		    !(bp->rx_mode & BNX2_EMAC_RX_MODE_KEEP_VLAN_TAG))
			FUNC5(skb, FUNC15(ETH_P_8021Q), rx_hdr->l2_fhdr_vlan_tag);

		skb->protocol = FUNC13(skb, bp->dev);

		if (len > (bp->dev->mtu + ETH_HLEN) &&
		    skb->protocol != FUNC15(0x8100) &&
		    skb->protocol != FUNC15(ETH_P_8021AD)) {

			FUNC10(skb);
			goto next_rx;

		}

		FUNC22(skb);
		if ((bp->dev->features & NETIF_F_RXCSUM) &&
			(status & (L2_FHDR_STATUS_TCP_SEGMENT |
			L2_FHDR_STATUS_UDP_DATAGRAM))) {

			if (FUNC16((status & (L2_FHDR_ERRORS_TCP_XSUM |
					      L2_FHDR_ERRORS_UDP_XSUM)) == 0))
				skb->ip_summed = CHECKSUM_UNNECESSARY;
		}
		if ((bp->dev->features & NETIF_F_RXHASH) &&
		    ((status & L2_FHDR_STATUS_USE_RXHASH) ==
		     L2_FHDR_STATUS_USE_RXHASH))
			FUNC26(skb, rx_hdr->l2_fhdr_hash,
				     PKT_HASH_TYPE_L3);

		FUNC24(skb, bnapi - &bp->bnx2_napi[0]);
		FUNC18(&bnapi->napi, skb);
		rx_pkt++;

next_rx:
		sw_cons = FUNC0(sw_cons);
		sw_prod = FUNC0(sw_prod);

		if (rx_pkt == budget)
			break;

		/* Refresh hw_cons to see if there is new work */
		if (sw_cons == hw_cons) {
			hw_cons = FUNC6(bnapi);
			FUNC21();
		}
	}
	rxr->rx_cons = sw_cons;
	rxr->rx_prod = sw_prod;

	if (pg_ring_used)
		FUNC3(bp, rxr->rx_pg_bidx_addr, rxr->rx_pg_prod);

	FUNC3(bp, rxr->rx_bidx_addr, sw_prod);

	FUNC2(bp, rxr->rx_bseq_addr, rxr->rx_prod_bseq);

	return rx_pkt;

}