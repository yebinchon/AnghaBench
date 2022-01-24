#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  union wil_tx_desc {int dummy; } wil_tx_desc ;
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_8__ {int /*<<< orphan*/  length; } ;
struct wil_tx_enhanced_desc {TYPE_3__ dma; } ;
struct wil_status_ring {scalar_t__ desc_rdy_pol; int swhead; int size; int /*<<< orphan*/  hwtail; } ;
struct wil_ring_tx_status {unsigned int num_descriptors; unsigned int ring_id; scalar_t__ status; } ;
struct wil_ring_tx_data {size_t mid; int /*<<< orphan*/  last_idle; int /*<<< orphan*/  enabled; } ;
struct wil_ring {size_t swtail; TYPE_2__* va; struct wil_ctx* ctx; } ;
struct wil_net_stats {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct wil_ctx {struct sk_buff* skb; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int** ring2cid_tid; int max_assoc_sta; int /*<<< orphan*/  ring_idle_trsh; TYPE_5__* sta; struct wil6210_vif** vifs; struct wil_ring_tx_data* ring_tx_data; struct wil_ring* ring_tx; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ len; } ;
struct TYPE_9__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_4__ stats; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_10__ {struct wil_net_stats stats; } ;
struct TYPE_6__ {int /*<<< orphan*/  enhanced; } ;
struct TYPE_7__ {TYPE_1__ tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int /*<<< orphan*/  ETH_P_PAE ; 
 unsigned int WIL6210_MAX_TX_RINGS ; 
 unsigned int WIL_EDMA_TX_SRING_UPDATE_HW_TAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wil_ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wil_ring_tx_status*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 struct net_device* FUNC7 (struct wil6210_vif*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wil6210_priv*,char*,unsigned int,int,...) ; 
 int /*<<< orphan*/  FUNC10 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct wil_status_ring*,scalar_t__*,struct wil_ring_tx_status*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int,int,void const*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct wil6210_priv*,char*,unsigned int) ; 
 size_t FUNC14 (struct wil_ring*) ; 
 int FUNC15 (struct wil_ring*) ; 
 int /*<<< orphan*/  FUNC16 (struct wil_status_ring*) ; 
 struct device* FUNC17 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC18 (struct wil6210_vif*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*,union wil_tx_desc*,struct wil_ctx*) ; 
 int /*<<< orphan*/  FUNC20 (struct wil6210_priv*,struct sk_buff*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (struct wil6210_priv*,struct wil6210_vif*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC23 (struct wil6210_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 () ; 

int FUNC25(struct wil6210_priv *wil,
			 struct wil_status_ring *sring)
{
	struct net_device *ndev;
	struct device *dev = FUNC17(wil);
	struct wil_ring *ring = NULL;
	struct wil_ring_tx_data *txdata;
	/* Total number of completed descriptors in all descriptor rings */
	int desc_cnt = 0;
	int cid;
	struct wil_net_stats *stats;
	struct wil_tx_enhanced_desc *_d;
	unsigned int ring_id;
	unsigned int num_descs, num_statuses = 0;
	int i;
	u8 dr_bit; /* Descriptor Ready bit */
	struct wil_ring_tx_status msg;
	struct wil6210_vif *vif;
	int used_before_complete;
	int used_new;

	FUNC11(sring, &dr_bit, &msg);

	/* Process completion messages while DR bit has the expected polarity */
	while (dr_bit == sring->desc_rdy_pol) {
		num_descs = msg.num_descriptors;
		if (!num_descs) {
			FUNC10(wil, "invalid num_descs 0\n");
			goto again;
		}

		/* Find the corresponding descriptor ring */
		ring_id = msg.ring_id;

		if (FUNC6(ring_id >= WIL6210_MAX_TX_RINGS)) {
			FUNC10(wil, "invalid ring id %d\n", ring_id);
			goto again;
		}
		ring = &wil->ring_tx[ring_id];
		if (FUNC6(!ring->va)) {
			FUNC10(wil, "Tx irq[%d]: ring not initialized\n",
				ring_id);
			goto again;
		}
		txdata = &wil->ring_tx_data[ring_id];
		if (FUNC6(!txdata->enabled)) {
			FUNC13(wil, "Tx irq[%d]: ring disabled\n", ring_id);
			goto again;
		}
		vif = wil->vifs[txdata->mid];
		if (FUNC6(!vif)) {
			FUNC9(wil, "invalid MID %d for ring %d\n",
				     txdata->mid, ring_id);
			goto again;
		}

		ndev = FUNC7(vif);

		cid = wil->ring2cid_tid[ring_id][0];
		stats = (cid < wil->max_assoc_sta) ? &wil->sta[cid].stats :
						     NULL;

		FUNC9(wil,
			     "tx_status: completed desc_ring (%d), num_descs (%d)\n",
			     ring_id, num_descs);

		used_before_complete = FUNC15(ring);

		for (i = 0 ; i < num_descs; ++i) {
			struct wil_ctx *ctx = &ring->ctx[ring->swtail];
			struct wil_tx_enhanced_desc dd, *d = &dd;
			u16 dmalen;
			struct sk_buff *skb = ctx->skb;

			_d = (struct wil_tx_enhanced_desc *)
				&ring->va[ring->swtail].tx.enhanced;
			*d = *_d;

			dmalen = FUNC2(d->dma.length);
			FUNC5(&msg, ring->swtail, dmalen);
			FUNC9(wil,
				     "TxC[%2d][%3d] : %d bytes, status 0x%02x\n",
				     ring_id, ring->swtail, dmalen,
				     msg.status);
			FUNC12("TxS ", DUMP_PREFIX_NONE, 32, 4,
					  (const void *)&msg, sizeof(msg),
					  false);

			FUNC19(dev,
					       (union wil_tx_desc *)d,
					       ctx);

			if (skb) {
				if (FUNC3(msg.status == 0)) {
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
					FUNC18(vif, skb);

				FUNC8(skb, msg.status == 0);
			}
			FUNC4(ctx, 0, sizeof(*ctx));
			/* Make sure the ctx is zeroed before updating the tail
			 * to prevent a case where wil_tx_ring will see
			 * this descriptor as used and handle it before ctx zero
			 * is completed.
			 */
			FUNC24();

			ring->swtail = FUNC14(ring);

			desc_cnt++;
		}

		/* performance monitoring */
		used_new = FUNC15(ring);
		if (FUNC22(wil->ring_idle_trsh,
				     used_new, used_before_complete)) {
			FUNC9(wil, "Ring[%2d] idle %d -> %d\n",
				     ring_id, used_before_complete, used_new);
			txdata->last_idle = FUNC1();
		}

again:
		num_statuses++;
		if (num_statuses % WIL_EDMA_TX_SRING_UPDATE_HW_TAIL == 0)
			/* update HW tail to allow HW to push new statuses */
			FUNC23(wil, sring->hwtail, sring->swhead);

		FUNC16(sring);

		FUNC11(sring, &dr_bit, &msg);
	}

	/* shall we wake net queues? */
	if (desc_cnt)
		FUNC21(wil, vif, NULL, false);

	if (num_statuses % WIL_EDMA_TX_SRING_UPDATE_HW_TAIL != 0)
		/* Update the HW tail ptr (RD ptr) */
		FUNC23(wil, sring->hwtail, (sring->swhead - 1) % sring->size);

	return desc_cnt;
}