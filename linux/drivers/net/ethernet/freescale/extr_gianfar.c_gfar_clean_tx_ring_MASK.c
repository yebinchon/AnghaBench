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
struct txbd8 {int /*<<< orphan*/  length; int /*<<< orphan*/  bufPtr; int /*<<< orphan*/  lstatus; } ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {scalar_t__ data; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct gfar_private {int /*<<< orphan*/  ndev; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;
struct gfar_priv_tx_q {int tx_ring_size; int qindex; int skb_dirtytx; struct txbd8* dirty_tx; scalar_t__ num_txbdfree; int /*<<< orphan*/  txlock; struct sk_buff** tx_skbuff; struct txbd8* tx_bd_base; struct net_device* dev; } ;
typedef  int /*<<< orphan*/  shhwtstamps ;
struct TYPE_4__ {scalar_t__ bytes_sent; } ;
struct TYPE_3__ {int nr_frags; int tx_flags; } ;

/* Variables and functions */
 int BD_LENGTH_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  GFAR_DOWN ; 
 size_t GMAC_FCB_LEN ; 
 size_t GMAC_TXPAL_LEN ; 
 int SKBTX_IN_PROGRESS ; 
 int /*<<< orphan*/  TXBD_READY ; 
 int FUNC2 (int) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct txbd8*) ; 
 int /*<<< orphan*/  FUNC10 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 struct netdev_queue* FUNC11 (struct net_device*,int) ; 
 struct gfar_private* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct netdev_queue*,int,unsigned int) ; 
 scalar_t__ FUNC14 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 struct txbd8* FUNC16 (struct txbd8*,struct txbd8*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,size_t) ; 
 TYPE_1__* FUNC19 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,struct skb_shared_hwtstamps*) ; 
 struct txbd8* FUNC21 (struct txbd8*,int,struct txbd8*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int) ; 

__attribute__((used)) static void FUNC26(struct gfar_priv_tx_q *tx_queue)
{
	struct net_device *dev = tx_queue->dev;
	struct netdev_queue *txq;
	struct gfar_private *priv = FUNC12(dev);
	struct txbd8 *bdp, *next = NULL;
	struct txbd8 *lbdp = NULL;
	struct txbd8 *base = tx_queue->tx_bd_base;
	struct sk_buff *skb;
	int skb_dirtytx;
	int tx_ring_size = tx_queue->tx_ring_size;
	int frags = 0, nr_txbds = 0;
	int i;
	int howmany = 0;
	int tqi = tx_queue->qindex;
	unsigned int bytes_sent = 0;
	u32 lstatus;
	size_t buflen;

	txq = FUNC11(dev, tqi);
	bdp = tx_queue->dirty_tx;
	skb_dirtytx = tx_queue->skb_dirtytx;

	while ((skb = tx_queue->tx_skbuff[skb_dirtytx])) {

		frags = FUNC19(skb)->nr_frags;

		/* When time stamping, one additional TxBD must be freed.
		 * Also, we need to dma_unmap_single() the TxPAL.
		 */
		if (FUNC25(FUNC19(skb)->tx_flags & SKBTX_IN_PROGRESS))
			nr_txbds = frags + 2;
		else
			nr_txbds = frags + 1;

		lbdp = FUNC21(bdp, nr_txbds - 1, base, tx_ring_size);

		lstatus = FUNC4(lbdp->lstatus);

		/* Only clean completed frames */
		if ((lstatus & FUNC0(TXBD_READY)) &&
		    (lstatus & BD_LENGTH_MASK))
			break;

		if (FUNC25(FUNC19(skb)->tx_flags & SKBTX_IN_PROGRESS)) {
			next = FUNC16(bdp, base, tx_ring_size);
			buflen = FUNC3(next->length) +
				 GMAC_FCB_LEN + GMAC_TXPAL_LEN;
		} else
			buflen = FUNC3(bdp->length);

		FUNC8(priv->dev, FUNC4(bdp->bufPtr),
				 buflen, DMA_TO_DEVICE);

		if (FUNC25(FUNC19(skb)->tx_flags & SKBTX_IN_PROGRESS)) {
			struct skb_shared_hwtstamps shhwtstamps;
			u64 *ns = (u64 *)(((uintptr_t)skb->data + 0x10) &
					  ~0x7UL);

			FUNC10(&shhwtstamps, 0, sizeof(shhwtstamps));
			shhwtstamps.hwtstamp = FUNC17(FUNC5(*ns));
			FUNC18(skb, GMAC_FCB_LEN + GMAC_TXPAL_LEN);
			FUNC20(skb, &shhwtstamps);
			FUNC9(bdp);
			bdp = next;
		}

		FUNC9(bdp);
		bdp = FUNC16(bdp, base, tx_ring_size);

		for (i = 0; i < frags; i++) {
			FUNC7(priv->dev, FUNC4(bdp->bufPtr),
				       FUNC3(bdp->length),
				       DMA_TO_DEVICE);
			FUNC9(bdp);
			bdp = FUNC16(bdp, base, tx_ring_size);
		}

		bytes_sent += FUNC1(skb)->bytes_sent;

		FUNC6(skb);

		tx_queue->tx_skbuff[skb_dirtytx] = NULL;

		skb_dirtytx = (skb_dirtytx + 1) &
			      FUNC2(tx_ring_size);

		howmany++;
		FUNC22(&tx_queue->txlock);
		tx_queue->num_txbdfree += nr_txbds;
		FUNC23(&tx_queue->txlock);
	}

	/* If we freed a buffer, we can restart transmission, if necessary */
	if (tx_queue->num_txbdfree &&
	    FUNC14(txq) &&
	    !(FUNC24(GFAR_DOWN, &priv->state)))
		FUNC15(priv->ndev, tqi);

	/* Update dirty indicators */
	tx_queue->skb_dirtytx = skb_dirtytx;
	tx_queue->dirty_tx = bdp;

	FUNC13(txq, howmany, bytes_sent);
}