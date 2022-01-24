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
typedef  unsigned char u8 ;
typedef  int u64 ;
typedef  unsigned int u16 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct l2_fhdr {int l2_fhdr_status; int l2_fhdr_pkt_len; } ;
struct bnx2_tx_ring_info {scalar_t__ tx_prod; unsigned int tx_prod_bseq; int /*<<< orphan*/  tx_bseq_addr; int /*<<< orphan*/  tx_bidx_addr; struct bnx2_tx_bd* tx_desc_ring; } ;
struct bnx2_tx_bd {int tx_bd_haddr_hi; int tx_bd_haddr_lo; unsigned int tx_bd_mss_nbytes; int tx_bd_vlan_tag_flags; } ;
struct bnx2_sw_bd {unsigned char* data; } ;
struct bnx2_rx_ring_info {struct bnx2_sw_bd* rx_buf_ring; } ;
struct bnx2_napi {struct bnx2_rx_ring_info rx_ring; struct bnx2_tx_ring_info tx_ring; } ;
struct bnx2 {int phy_flags; int hc_cmd; scalar_t__ loopback; int /*<<< orphan*/  rx_buf_use_size; TYPE_1__* pdev; TYPE_2__* dev; scalar_t__ rx_jumbo_thresh; struct bnx2_napi* bnx2_napi; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; scalar_t__ mtu; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2_HC_COMMAND ; 
 int BNX2_HC_COMMAND_COAL_NOW_WO_INT ; 
 int BNX2_MAC_LOOPBACK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int BNX2_PHY_FLAG_REMOTE_PHY_CAP ; 
 int BNX2_PHY_LOOPBACK ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int BNX2_RX_OFFSET ; 
 size_t FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2*,int /*<<< orphan*/ ,scalar_t__) ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 scalar_t__ ETH_HLEN ; 
 int L2_FHDR_ERRORS_ALIGNMENT ; 
 int L2_FHDR_ERRORS_BAD_CRC ; 
 int L2_FHDR_ERRORS_GIANT_FRAME ; 
 int L2_FHDR_ERRORS_PHY_DECODE ; 
 int L2_FHDR_ERRORS_TOO_SHORT ; 
 scalar_t__ MAC_LOOPBACK ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ PHY_LOOPBACK ; 
 int TX_BD_FLAGS_END ; 
 int TX_BD_FLAGS_START ; 
 unsigned int FUNC5 (struct bnx2_napi*) ; 
 scalar_t__ FUNC6 (struct bnx2_napi*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bnx2_sw_bd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 struct l2_fhdr* FUNC15 (unsigned char*) ; 
 int /*<<< orphan*/  mapping ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*,int,int) ; 
 unsigned int FUNC18 (scalar_t__,scalar_t__) ; 
 struct sk_buff* FUNC19 (TYPE_2__*,unsigned int) ; 
 unsigned char* FUNC20 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

__attribute__((used)) static int
FUNC22(struct bnx2 *bp, int loopback_mode)
{
	unsigned int pkt_size, num_pkts, i;
	struct sk_buff *skb;
	u8 *data;
	unsigned char *packet;
	u16 rx_start_idx, rx_idx;
	dma_addr_t map;
	struct bnx2_tx_bd *txbd;
	struct bnx2_sw_bd *rx_buf;
	struct l2_fhdr *rx_hdr;
	int ret = -ENODEV;
	struct bnx2_napi *bnapi = &bp->bnx2_napi[0], *tx_napi;
	struct bnx2_tx_ring_info *txr;
	struct bnx2_rx_ring_info *rxr;

	tx_napi = bnapi;

	txr = &tx_napi->tx_ring;
	rxr = &bnapi->rx_ring;
	if (loopback_mode == BNX2_MAC_LOOPBACK) {
		bp->loopback = MAC_LOOPBACK;
		FUNC7(bp);
	}
	else if (loopback_mode == BNX2_PHY_LOOPBACK) {
		if (bp->phy_flags & BNX2_PHY_FLAG_REMOTE_PHY_CAP)
			return 0;

		bp->loopback = PHY_LOOPBACK;
		FUNC8(bp);
	}
	else
		return -EINVAL;

	pkt_size = FUNC18(bp->dev->mtu + ETH_HLEN, bp->rx_jumbo_thresh - 4);
	skb = FUNC19(bp->dev, pkt_size);
	if (!skb)
		return -ENOMEM;
	packet = FUNC20(skb, pkt_size);
	FUNC16(packet, bp->dev->dev_addr, ETH_ALEN);
	FUNC17(packet + ETH_ALEN, 0x0, 8);
	for (i = 14; i < pkt_size; i++)
		packet[i] = (unsigned char) (i & 0xff);

	map = FUNC10(&bp->pdev->dev, skb->data, pkt_size,
			     PCI_DMA_TODEVICE);
	if (FUNC11(&bp->pdev->dev, map)) {
		FUNC9(skb);
		return -EIO;
	}

	FUNC3(bp, BNX2_HC_COMMAND,
		bp->hc_cmd | BNX2_HC_COMMAND_COAL_NOW_WO_INT);

	FUNC1(bp, BNX2_HC_COMMAND);

	FUNC21(5);
	rx_start_idx = FUNC5(bnapi);

	num_pkts = 0;

	txbd = &txr->tx_desc_ring[FUNC2(txr->tx_prod)];

	txbd->tx_bd_haddr_hi = (u64) map >> 32;
	txbd->tx_bd_haddr_lo = (u64) map & 0xffffffff;
	txbd->tx_bd_mss_nbytes = pkt_size;
	txbd->tx_bd_vlan_tag_flags = TX_BD_FLAGS_START | TX_BD_FLAGS_END;

	num_pkts++;
	txr->tx_prod = FUNC0(txr->tx_prod);
	txr->tx_prod_bseq += pkt_size;

	FUNC4(bp, txr->tx_bidx_addr, txr->tx_prod);
	FUNC3(bp, txr->tx_bseq_addr, txr->tx_prod_bseq);

	FUNC21(100);

	FUNC3(bp, BNX2_HC_COMMAND,
		bp->hc_cmd | BNX2_HC_COMMAND_COAL_NOW_WO_INT);

	FUNC1(bp, BNX2_HC_COMMAND);

	FUNC21(5);

	FUNC14(&bp->pdev->dev, map, pkt_size, PCI_DMA_TODEVICE);
	FUNC9(skb);

	if (FUNC6(tx_napi) != txr->tx_prod)
		goto loopback_test_done;

	rx_idx = FUNC5(bnapi);
	if (rx_idx != rx_start_idx + num_pkts) {
		goto loopback_test_done;
	}

	rx_buf = &rxr->rx_buf_ring[rx_start_idx];
	data = rx_buf->data;

	rx_hdr = FUNC15(data);
	data = (u8 *)rx_hdr + BNX2_RX_OFFSET;

	FUNC12(&bp->pdev->dev,
		FUNC13(rx_buf, mapping),
		bp->rx_buf_use_size, PCI_DMA_FROMDEVICE);

	if (rx_hdr->l2_fhdr_status &
		(L2_FHDR_ERRORS_BAD_CRC |
		L2_FHDR_ERRORS_PHY_DECODE |
		L2_FHDR_ERRORS_ALIGNMENT |
		L2_FHDR_ERRORS_TOO_SHORT |
		L2_FHDR_ERRORS_GIANT_FRAME)) {

		goto loopback_test_done;
	}

	if ((rx_hdr->l2_fhdr_pkt_len - 4) != pkt_size) {
		goto loopback_test_done;
	}

	for (i = 14; i < pkt_size; i++) {
		if (*(data + i) != (unsigned char) (i & 0xff)) {
			goto loopback_test_done;
		}
	}

	ret = 0;

loopback_test_done:
	bp->loopback = 0;
	return ret;
}