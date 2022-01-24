#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  union wil_tx_desc {int dummy; } wil_tx_desc ;
typedef  int /*<<< orphan*/  u16 ;
struct wil_ring_tx_data {int /*<<< orphan*/  last_idle; int /*<<< orphan*/  enabled; } ;
struct wil_ring {size_t swtail; int size; TYPE_2__* va; struct wil_ctx* ctx; } ;
struct wil_net_stats {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct wil_ctx {int nr_frags; struct sk_buff* skb; } ;
struct wil6210_vif {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* tx_desc_unmap ) (struct device*,union wil_tx_desc*,struct wil_ctx*) ;} ;
struct wil6210_priv {int** ring2cid_tid; int max_assoc_sta; int /*<<< orphan*/  ring_idle_trsh; TYPE_6__* sta; TYPE_3__ txrx_ops; struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;
struct TYPE_11__ {int status; scalar_t__ error; int /*<<< orphan*/  length; } ;
struct vring_tx_desc {TYPE_5__ dma; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ len; } ;
struct TYPE_10__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_4__ stats; } ;
struct device {int dummy; } ;
struct TYPE_12__ {struct wil_net_stats stats; } ;
struct TYPE_7__ {struct vring_tx_desc legacy; } ;
struct TYPE_8__ {TYPE_1__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int /*<<< orphan*/  ETH_P_PAE ; 
 int TX_DMA_STATUS_DU ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wil_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,union wil_tx_desc*,struct wil_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int,size_t,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 struct net_device* FUNC8 (struct wil6210_vif*) ; 
 struct wil6210_priv* FUNC9 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct wil6210_priv*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC12 (struct wil6210_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int,int,void const*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct wil6210_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct wil_ring*) ; 
 size_t FUNC16 (struct wil_ring*) ; 
 int FUNC17 (struct wil_ring*) ; 
 struct device* FUNC18 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct wil6210_vif*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (struct wil6210_priv*,struct sk_buff*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC21 (struct wil6210_priv*,struct wil6210_vif*,struct wil_ring*,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC23 () ; 

int FUNC24(struct wil6210_vif *vif, int ringid)
{
	struct wil6210_priv *wil = FUNC9(vif);
	struct net_device *ndev = FUNC8(vif);
	struct device *dev = FUNC18(wil);
	struct wil_ring *vring = &wil->ring_tx[ringid];
	struct wil_ring_tx_data *txdata = &wil->ring_tx_data[ringid];
	int done = 0;
	int cid = wil->ring2cid_tid[ringid][0];
	struct wil_net_stats *stats = NULL;
	volatile struct vring_tx_desc *_d;
	int used_before_complete;
	int used_new;

	if (FUNC7(!vring->va)) {
		FUNC12(wil, "Tx irq[%d]: vring not initialized\n", ringid);
		return 0;
	}

	if (FUNC7(!txdata->enabled)) {
		FUNC14(wil, "Tx irq[%d]: vring disabled\n", ringid);
		return 0;
	}

	FUNC11(wil, "tx_complete: (%d)\n", ringid);

	used_before_complete = FUNC17(vring);

	if (cid < wil->max_assoc_sta)
		stats = &wil->sta[cid].stats;

	while (!FUNC15(vring)) {
		int new_swtail;
		struct wil_ctx *ctx = &vring->ctx[vring->swtail];
		/**
		 * For the fragmented skb, HW will set DU bit only for the
		 * last fragment. look for it.
		 * In TSO the first DU will include hdr desc
		 */
		int lf = (vring->swtail + ctx->nr_frags) % vring->size;
		/* TODO: check we are not past head */

		_d = &vring->va[lf].tx.legacy;
		if (FUNC7(!(_d->dma.status & TX_DMA_STATUS_DU)))
			break;

		new_swtail = (lf + 1) % vring->size;
		while (vring->swtail != new_swtail) {
			struct vring_tx_desc dd, *d = &dd;
			u16 dmalen;
			struct sk_buff *skb;

			ctx = &vring->ctx[vring->swtail];
			skb = ctx->skb;
			_d = &vring->va[vring->swtail].tx.legacy;

			*d = *_d;

			dmalen = FUNC2(d->dma.length);
			FUNC6(ringid, vring->swtail, dmalen,
					      d->dma.error);
			FUNC11(wil,
				     "TxC[%2d][%3d] : %d bytes, status 0x%02x err 0x%02x\n",
				     ringid, vring->swtail, dmalen,
				     d->dma.status, d->dma.error);
			FUNC13("TxCD ", DUMP_PREFIX_NONE, 32, 4,
					  (const void *)d, sizeof(*d), false);

			wil->txrx_ops.tx_desc_unmap(dev,
						    (union wil_tx_desc *)d,
						    ctx);

			if (skb) {
				if (FUNC3(d->dma.error == 0)) {
					ndev->stats.tx_packets++;
					ndev->stats.tx_bytes += skb->len;
					if (stats) {
						stats->tx_packets++;
						stats->tx_bytes += skb->len;

						FUNC20(wil, skb,
							&wil->sta[cid]);
					}
				} else {
					ndev->stats.tx_errors++;
					if (stats)
						stats->tx_errors++;
				}

				if (skb->protocol == FUNC0(ETH_P_PAE))
					FUNC19(vif, skb);

				FUNC10(skb, d->dma.error == 0);
			}
			FUNC4(ctx, 0, sizeof(*ctx));
			/* Make sure the ctx is zeroed before updating the tail
			 * to prevent a case where wil_tx_ring will see
			 * this descriptor as used and handle it before ctx zero
			 * is completed.
			 */
			FUNC23();
			/* There is no need to touch HW descriptor:
			 * - ststus bit TX_DMA_STATUS_DU is set by design,
			 *   so hardware will not try to process this desc.,
			 * - rest of descriptor will be initialized on Tx.
			 */
			vring->swtail = FUNC16(vring);
			done++;
		}
	}

	/* performance monitoring */
	used_new = FUNC17(vring);
	if (FUNC22(wil->ring_idle_trsh,
			     used_new, used_before_complete)) {
		FUNC11(wil, "Ring[%2d] idle %d -> %d\n",
			     ringid, used_before_complete, used_new);
		txdata->last_idle = FUNC1();
	}

	/* shall we wake net queues? */
	if (done)
		FUNC21(wil, vif, vring, false);

	return done;
}