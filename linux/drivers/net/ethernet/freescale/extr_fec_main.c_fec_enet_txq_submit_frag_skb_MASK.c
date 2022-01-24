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
struct sk_buff {scalar_t__ ip_summed; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {int quirks; unsigned long tx_align; TYPE_1__* pdev; scalar_t__ bufdesc_ex; scalar_t__ hwts_tx_en; } ;
struct TYPE_7__ {struct bufdesc* cur; int /*<<< orphan*/  qid; } ;
struct fec_enet_priv_tx_q {TYPE_3__ bd; void** tx_bounce; } ;
struct bufdesc_ex {void* cbd_esc; scalar_t__ cbd_bdu; } ;
struct bufdesc {void* cbd_datlen; void* cbd_bufaddr; void* cbd_sc; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  unsigned int dma_addr_t ;
struct TYPE_6__ {int nr_frags; int tx_flags; int /*<<< orphan*/ * frags; } ;
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
 int /*<<< orphan*/  ENOMEM ; 
 struct bufdesc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FEC_QUIRK_HAS_AVB ; 
 int FEC_QUIRK_SWAP_FRAME ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int SKBTX_HW_TSTAMP ; 
 void* FUNC2 (unsigned short) ; 
 void* FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ) ; 
 unsigned short FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 unsigned int FUNC9 (struct bufdesc*,TYPE_3__*) ; 
 struct bufdesc* FUNC10 (struct bufdesc*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (void*,void*,int) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,char*) ; 
 struct fec_enet_private* FUNC14 (struct net_device*) ; 
 void* FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (void*,int) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 () ; 

__attribute__((used)) static struct bufdesc *
FUNC21(struct fec_enet_priv_tx_q *txq,
			     struct sk_buff *skb,
			     struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC14(ndev);
	struct bufdesc *bdp = txq->bd.cur;
	struct bufdesc_ex *ebdp;
	int nr_frags = FUNC17(skb)->nr_frags;
	int frag, frag_len;
	unsigned short status;
	unsigned int estatus = 0;
	skb_frag_t *this_frag;
	unsigned int index;
	void *bufaddr;
	dma_addr_t addr;
	int i;

	for (frag = 0; frag < nr_frags; frag++) {
		this_frag = &FUNC17(skb)->frags[frag];
		bdp = FUNC10(bdp, &txq->bd);
		ebdp = (struct bufdesc_ex *)bdp;

		status = FUNC7(bdp->cbd_sc);
		status &= ~BD_ENET_TX_STATS;
		status |= (BD_ENET_TX_TC | BD_ENET_TX_READY);
		frag_len = FUNC16(&FUNC17(skb)->frags[frag]);

		/* Handle the last BD specially */
		if (frag == nr_frags - 1) {
			status |= (BD_ENET_TX_INTR | BD_ENET_TX_LAST);
			if (fep->bufdesc_ex) {
				estatus |= BD_ENET_TX_INT;
				if (FUNC19(FUNC17(skb)->tx_flags &
					SKBTX_HW_TSTAMP && fep->hwts_tx_en))
					estatus |= BD_ENET_TX_TS;
			}
		}

		if (fep->bufdesc_ex) {
			if (fep->quirks & FEC_QUIRK_HAS_AVB)
				estatus |= FUNC1(txq->bd.qid);
			if (skb->ip_summed == CHECKSUM_PARTIAL)
				estatus |= BD_ENET_TX_PINS | BD_ENET_TX_IINS;
			ebdp->cbd_bdu = 0;
			ebdp->cbd_esc = FUNC3(estatus);
		}

		bufaddr = FUNC15(this_frag);

		index = FUNC9(bdp, &txq->bd);
		if (((unsigned long) bufaddr) & fep->tx_align ||
			fep->quirks & FEC_QUIRK_SWAP_FRAME) {
			FUNC11(txq->tx_bounce[index], bufaddr, frag_len);
			bufaddr = txq->tx_bounce[index];

			if (fep->quirks & FEC_QUIRK_SWAP_FRAME)
				FUNC18(bufaddr, frag_len);
		}

		addr = FUNC4(&fep->pdev->dev, bufaddr, frag_len,
				      DMA_TO_DEVICE);
		if (FUNC5(&fep->pdev->dev, addr)) {
			if (FUNC12())
				FUNC13(ndev, "Tx DMA memory map failed\n");
			goto dma_mapping_error;
		}

		bdp->cbd_bufaddr = FUNC3(addr);
		bdp->cbd_datlen = FUNC2(frag_len);
		/* Make sure the updates to rest of the descriptor are
		 * performed before transferring ownership.
		 */
		FUNC20();
		bdp->cbd_sc = FUNC2(status);
	}

	return bdp;
dma_mapping_error:
	bdp = txq->bd.cur;
	for (i = 0; i < frag; i++) {
		bdp = FUNC10(bdp, &txq->bd);
		FUNC6(&fep->pdev->dev, FUNC8(bdp->cbd_bufaddr),
				 FUNC7(bdp->cbd_datlen), DMA_TO_DEVICE);
	}
	return FUNC0(-ENOMEM);
}