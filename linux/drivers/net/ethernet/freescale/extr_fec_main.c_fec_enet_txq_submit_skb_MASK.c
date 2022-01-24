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
struct sk_buff {scalar_t__ ip_summed; void* data; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {unsigned long tx_align; int quirks; scalar_t__ hwts_tx_en; scalar_t__ bufdesc_ex; TYPE_1__* pdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  reg_desc_active; struct bufdesc* cur; int /*<<< orphan*/  qid; } ;
struct fec_enet_priv_tx_q {TYPE_3__ bd; struct sk_buff** tx_skbuff; void** tx_bounce; } ;
struct bufdesc_ex {void* cbd_esc; scalar_t__ cbd_bdu; } ;
struct bufdesc {void* cbd_sc; void* cbd_datlen; void* cbd_bufaddr; } ;
typedef  unsigned int dma_addr_t ;
struct TYPE_6__ {int nr_frags; int tx_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int BD_ENET_TX_IINS ; 
 unsigned int BD_ENET_TX_INT ; 
 unsigned short BD_ENET_TX_INTR ; 
 unsigned short BD_ENET_TX_LAST ; 
 unsigned int BD_ENET_TX_PINS ; 
 unsigned short BD_ENET_TX_READY ; 
 unsigned short BD_ENET_TX_STATS ; 
 unsigned short BD_ENET_TX_TC ; 
 unsigned int BD_ENET_TX_TS ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int FEC_QUIRK_HAS_AVB ; 
 int FEC_QUIRK_SWAP_FRAME ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bufdesc*) ; 
 int MAX_SKB_FRAGS ; 
 int NETDEV_TX_OK ; 
 int SKBTX_HW_TSTAMP ; 
 int SKBTX_IN_PROGRESS ; 
 void* FUNC2 (unsigned short) ; 
 void* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,void*,unsigned short,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int,unsigned short,int /*<<< orphan*/ ) ; 
 unsigned short FUNC8 (void*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,struct net_device*) ; 
 unsigned int FUNC10 (struct bufdesc*,TYPE_3__*) ; 
 int FUNC11 (struct fec_enet_priv_tx_q*) ; 
 struct bufdesc* FUNC12 (struct bufdesc*,TYPE_3__*) ; 
 struct bufdesc* FUNC13 (struct fec_enet_priv_tx_q*,struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (void*,void*,unsigned short) ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,char*) ; 
 struct fec_enet_private* FUNC17 (struct net_device*) ; 
 unsigned short FUNC18 (struct sk_buff*) ; 
 TYPE_2__* FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (void*,unsigned short) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC25(struct fec_enet_priv_tx_q *txq,
				   struct sk_buff *skb, struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC17(ndev);
	int nr_frags = FUNC19(skb)->nr_frags;
	struct bufdesc *bdp, *last_bdp;
	void *bufaddr;
	dma_addr_t addr;
	unsigned short status;
	unsigned short buflen;
	unsigned int estatus = 0;
	unsigned int index;
	int entries_free;

	entries_free = FUNC11(txq);
	if (entries_free < MAX_SKB_FRAGS + 1) {
		FUNC4(skb);
		if (FUNC15())
			FUNC16(ndev, "NOT enough BD for SG!\n");
		return NETDEV_TX_OK;
	}

	/* Protocol checksum off-load for TCP and UDP. */
	if (FUNC9(skb, ndev)) {
		FUNC4(skb);
		return NETDEV_TX_OK;
	}

	/* Fill in a Tx ring entry */
	bdp = txq->bd.cur;
	last_bdp = bdp;
	status = FUNC8(bdp->cbd_sc);
	status &= ~BD_ENET_TX_STATS;

	/* Set buffer length and buffer pointer */
	bufaddr = skb->data;
	buflen = FUNC18(skb);

	index = FUNC10(bdp, &txq->bd);
	if (((unsigned long) bufaddr) & fep->tx_align ||
		fep->quirks & FEC_QUIRK_SWAP_FRAME) {
		FUNC14(txq->tx_bounce[index], skb->data, buflen);
		bufaddr = txq->tx_bounce[index];

		if (fep->quirks & FEC_QUIRK_SWAP_FRAME)
			FUNC21(bufaddr, buflen);
	}

	/* Push the data cache so the CPM does not get stale memory data. */
	addr = FUNC5(&fep->pdev->dev, bufaddr, buflen, DMA_TO_DEVICE);
	if (FUNC6(&fep->pdev->dev, addr)) {
		FUNC4(skb);
		if (FUNC15())
			FUNC16(ndev, "Tx DMA memory map failed\n");
		return NETDEV_TX_OK;
	}

	if (nr_frags) {
		last_bdp = FUNC13(txq, skb, ndev);
		if (FUNC1(last_bdp)) {
			FUNC7(&fep->pdev->dev, addr,
					 buflen, DMA_TO_DEVICE);
			FUNC4(skb);
			return NETDEV_TX_OK;
		}
	} else {
		status |= (BD_ENET_TX_INTR | BD_ENET_TX_LAST);
		if (fep->bufdesc_ex) {
			estatus = BD_ENET_TX_INT;
			if (FUNC22(FUNC19(skb)->tx_flags &
				SKBTX_HW_TSTAMP && fep->hwts_tx_en))
				estatus |= BD_ENET_TX_TS;
		}
	}
	bdp->cbd_bufaddr = FUNC3(addr);
	bdp->cbd_datlen = FUNC2(buflen);

	if (fep->bufdesc_ex) {

		struct bufdesc_ex *ebdp = (struct bufdesc_ex *)bdp;

		if (FUNC22(FUNC19(skb)->tx_flags & SKBTX_HW_TSTAMP &&
			fep->hwts_tx_en))
			FUNC19(skb)->tx_flags |= SKBTX_IN_PROGRESS;

		if (fep->quirks & FEC_QUIRK_HAS_AVB)
			estatus |= FUNC0(txq->bd.qid);

		if (skb->ip_summed == CHECKSUM_PARTIAL)
			estatus |= BD_ENET_TX_PINS | BD_ENET_TX_IINS;

		ebdp->cbd_bdu = 0;
		ebdp->cbd_esc = FUNC3(estatus);
	}

	index = FUNC10(last_bdp, &txq->bd);
	/* Save skb pointer */
	txq->tx_skbuff[index] = skb;

	/* Make sure the updates to rest of the descriptor are performed before
	 * transferring ownership.
	 */
	FUNC23();

	/* Send it on its way.  Tell FEC it's ready, interrupt when done,
	 * it's the last BD of the frame, and to put the CRC on the end.
	 */
	status |= (BD_ENET_TX_READY | BD_ENET_TX_TC);
	bdp->cbd_sc = FUNC2(status);

	/* If this was the last BD in the ring, start at the beginning again. */
	bdp = FUNC12(last_bdp, &txq->bd);

	FUNC20(skb);

	/* Make sure the update to bdp and tx_skbuff are performed before
	 * txq->bd.cur.
	 */
	FUNC23();
	txq->bd.cur = bdp;

	/* Trigger transmission start */
	FUNC24(0, txq->bd.reg_desc_active);

	return 0;
}