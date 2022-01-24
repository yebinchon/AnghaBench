#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ushort ;
typedef  size_t u16 ;
struct vlan_hdr {int /*<<< orphan*/  h_vlan_TCI; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; int /*<<< orphan*/ * data; } ;
struct TYPE_5__ {int rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {int features; TYPE_1__ stats; } ;
struct fec_enet_private {int quirks; int csum_flags; scalar_t__ bufdesc_ex; scalar_t__ rx_align; TYPE_2__* pdev; int /*<<< orphan*/  napi; scalar_t__ hwts_rx_en; scalar_t__ hwp; struct fec_enet_priv_rx_q** rx_queue; } ;
struct TYPE_7__ {struct bufdesc* cur; scalar_t__ reg_desc_active; } ;
struct fec_enet_priv_rx_q {TYPE_3__ bd; struct sk_buff** rx_skbuff; } ;
struct bufdesc_ex {int cbd_esc; scalar_t__ cbd_bdu; scalar_t__ cbd_prot; int /*<<< orphan*/  ts; } ;
struct bufdesc {int /*<<< orphan*/  cbd_sc; int /*<<< orphan*/  cbd_bufaddr; int /*<<< orphan*/  cbd_datlen; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned short BD_ENET_RX_CL ; 
 unsigned short BD_ENET_RX_CR ; 
 unsigned short BD_ENET_RX_EMPTY ; 
 int /*<<< orphan*/  BD_ENET_RX_INT ; 
 unsigned short BD_ENET_RX_LAST ; 
 unsigned short BD_ENET_RX_LG ; 
 unsigned short BD_ENET_RX_NO ; 
 unsigned short BD_ENET_RX_OV ; 
 unsigned short BD_ENET_RX_SH ; 
 unsigned short BD_ENET_RX_STATS ; 
 int /*<<< orphan*/  BD_ENET_RX_VLAN ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ETH_ALEN ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FEC_ENET_RXF ; 
 scalar_t__ FEC_ENET_RX_FRSIZE ; 
 scalar_t__ FEC_IEVENT ; 
 int FEC_QUIRK_HAS_RACC ; 
 int FEC_QUIRK_SWAP_FRAME ; 
 int FLAG_RX_CSUM_ENABLED ; 
 int /*<<< orphan*/  FLAG_RX_CSUM_ERROR ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NET_IP_ALIGN ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net_device*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct net_device*,struct sk_buff**,struct bufdesc*,int,int) ; 
 int FUNC10 (struct bufdesc*,TYPE_3__*) ; 
 struct bufdesc* FUNC11 (struct bufdesc*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct fec_enet_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,struct bufdesc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC18 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*,char*) ; 
 struct fec_enet_private* FUNC20 (struct net_device*) ; 
 size_t FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,int) ; 
 int /*<<< orphan*/ * FUNC26 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC32(struct net_device *ndev, int budget, u16 queue_id)
{
	struct fec_enet_private *fep = FUNC20(ndev);
	struct fec_enet_priv_rx_q *rxq;
	struct bufdesc *bdp;
	unsigned short status;
	struct  sk_buff *skb_new = NULL;
	struct  sk_buff *skb;
	ushort	pkt_len;
	__u8 *data;
	int	pkt_received = 0;
	struct	bufdesc_ex *ebdp = NULL;
	bool	vlan_packet_rcvd = false;
	u16	vlan_tag;
	int	index = 0;
	bool	is_copybreak;
	bool	need_swap = fep->quirks & FEC_QUIRK_SWAP_FRAME;

#ifdef CONFIG_M532x
	flush_cache_all();
#endif
	queue_id = FUNC0(queue_id);
	rxq = fep->rx_queue[queue_id];

	/* First, grab all of the stats for the incoming packet.
	 * These get messed up if we get called due to a busy condition.
	 */
	bdp = rxq->bd.cur;

	while (!((status = FUNC7(bdp->cbd_sc)) & BD_ENET_RX_EMPTY)) {

		if (pkt_received >= budget)
			break;
		pkt_received++;

		FUNC31(FEC_ENET_RXF, fep->hwp + FEC_IEVENT);

		/* Check for errors. */
		status ^= BD_ENET_RX_LAST;
		if (status & (BD_ENET_RX_LG | BD_ENET_RX_SH | BD_ENET_RX_NO |
			   BD_ENET_RX_CR | BD_ENET_RX_OV | BD_ENET_RX_LAST |
			   BD_ENET_RX_CL)) {
			ndev->stats.rx_errors++;
			if (status & BD_ENET_RX_OV) {
				/* FIFO overrun */
				ndev->stats.rx_fifo_errors++;
				goto rx_processing_done;
			}
			if (status & (BD_ENET_RX_LG | BD_ENET_RX_SH
						| BD_ENET_RX_LAST)) {
				/* Frame too long or too short. */
				ndev->stats.rx_length_errors++;
				if (status & BD_ENET_RX_LAST)
					FUNC19(ndev, "rcv is not +last\n");
			}
			if (status & BD_ENET_RX_CR)	/* CRC Error */
				ndev->stats.rx_crc_errors++;
			/* Report late collisions as a frame error. */
			if (status & (BD_ENET_RX_NO | BD_ENET_RX_CL))
				ndev->stats.rx_frame_errors++;
			goto rx_processing_done;
		}

		/* Process the incoming frame. */
		ndev->stats.rx_packets++;
		pkt_len = FUNC7(bdp->cbd_datlen);
		ndev->stats.rx_bytes += pkt_len;

		index = FUNC10(bdp, &rxq->bd);
		skb = rxq->rx_skbuff[index];

		/* The packet length includes FCS, but we don't want to
		 * include that when passing upstream as it messes up
		 * bridging applications.
		 */
		is_copybreak = FUNC9(ndev, &skb, bdp, pkt_len - 4,
						  need_swap);
		if (!is_copybreak) {
			skb_new = FUNC18(ndev, FEC_ENET_RX_FRSIZE);
			if (FUNC29(!skb_new)) {
				ndev->stats.rx_dropped++;
				goto rx_processing_done;
			}
			FUNC5(&fep->pdev->dev,
					 FUNC8(bdp->cbd_bufaddr),
					 FEC_ENET_RX_FRSIZE - fep->rx_align,
					 DMA_FROM_DEVICE);
		}

		FUNC22(skb->data - NET_IP_ALIGN);
		FUNC27(skb, pkt_len - 4);
		data = skb->data;

		if (!is_copybreak && need_swap)
			FUNC28(data, pkt_len);

#if !defined(CONFIG_M5272)
		if (fep->quirks & FEC_QUIRK_HAS_RACC)
			data = FUNC26(skb, 2);
#endif

		/* Extract the enhanced buffer descriptor */
		ebdp = NULL;
		if (fep->bufdesc_ex)
			ebdp = (struct bufdesc_ex *)bdp;

		/* If this is a VLAN packet remove the VLAN Tag */
		vlan_packet_rcvd = false;
		if ((ndev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
		    fep->bufdesc_ex &&
		    (ebdp->cbd_esc & FUNC3(BD_ENET_RX_VLAN))) {
			/* Push and remove the vlan tag */
			struct vlan_hdr *vlan_header =
					(struct vlan_hdr *) (data + ETH_HLEN);
			vlan_tag = FUNC21(vlan_header->h_vlan_TCI);

			vlan_packet_rcvd = true;

			FUNC16(skb->data + VLAN_HLEN, data, ETH_ALEN * 2);
			FUNC25(skb, VLAN_HLEN);
		}

		skb->protocol = FUNC6(skb, ndev);

		/* Get receive timestamp from the skb */
		if (fep->hwts_rx_en && fep->bufdesc_ex)
			FUNC12(fep, FUNC8(ebdp->ts),
					  FUNC24(skb));

		if (fep->bufdesc_ex &&
		    (fep->csum_flags & FLAG_RX_CSUM_ENABLED)) {
			if (!(ebdp->cbd_esc & FUNC3(FLAG_RX_CSUM_ERROR))) {
				/* don't check it */
				skb->ip_summed = CHECKSUM_UNNECESSARY;
			} else {
				FUNC23(skb);
			}
		}

		/* Handle received VLAN packets */
		if (vlan_packet_rcvd)
			FUNC1(skb,
					       FUNC15(ETH_P_8021Q),
					       vlan_tag);

		FUNC17(&fep->napi, skb);

		if (is_copybreak) {
			FUNC4(&fep->pdev->dev,
						   FUNC8(bdp->cbd_bufaddr),
						   FEC_ENET_RX_FRSIZE - fep->rx_align,
						   DMA_FROM_DEVICE);
		} else {
			rxq->rx_skbuff[index] = skb_new;
			FUNC13(ndev, bdp, skb_new);
		}

rx_processing_done:
		/* Clear the status flags for this buffer */
		status &= ~BD_ENET_RX_STATS;

		/* Mark the buffer empty */
		status |= BD_ENET_RX_EMPTY;

		if (fep->bufdesc_ex) {
			struct bufdesc_ex *ebdp = (struct bufdesc_ex *)bdp;

			ebdp->cbd_esc = FUNC3(BD_ENET_RX_INT);
			ebdp->cbd_prot = 0;
			ebdp->cbd_bdu = 0;
		}
		/* Make sure the updates to rest of the descriptor are
		 * performed before transferring ownership.
		 */
		FUNC30();
		bdp->cbd_sc = FUNC2(status);

		/* Update BD pointer to next entry */
		bdp = FUNC11(bdp, &rxq->bd);

		/* Doing this here will keep the FEC running while we process
		 * incoming frames.  On a heavily loaded network, we should be
		 * able to keep up at the expense of system resources.
		 */
		FUNC31(0, rxq->bd.reg_desc_active);
	}
	rxq->bd.cur = bdp;
	return pkt_received;
}