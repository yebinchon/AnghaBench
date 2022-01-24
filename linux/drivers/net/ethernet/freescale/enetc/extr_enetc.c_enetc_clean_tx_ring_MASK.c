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
union enetc_tx_bd {int flags; } ;
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
struct enetc_tx_swbd {int check_wb; scalar_t__ len; int /*<<< orphan*/ * skb; int /*<<< orphan*/  dma; scalar_t__ do_tstamp; } ;
struct enetc_ndev_priv {TYPE_1__* si; } ;
struct TYPE_4__ {int packets; int bytes; } ;
struct enetc_bdr {int next_to_clean; int bd_count; int /*<<< orphan*/  index; TYPE_2__ stats; int /*<<< orphan*/  idr; struct enetc_tx_swbd* tx_swbd; struct net_device* ndev; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENETC_DEFAULT_TX_WORK ; 
 union enetc_tx_bd* FUNC1 (struct enetc_bdr,int) ; 
 scalar_t__ ENETC_TXBDS_MAX_NEEDED ; 
 int ENETC_TXBD_FLAGS_W ; 
 scalar_t__ FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct enetc_bdr*,int) ; 
 scalar_t__ FUNC4 (struct enetc_bdr*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,union enetc_tx_bd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct enetc_bdr*,struct enetc_tx_swbd*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 struct enetc_ndev_priv* FUNC11 (struct net_device*) ; 
 scalar_t__ FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static bool FUNC15(struct enetc_bdr *tx_ring, int napi_budget)
{
	struct net_device *ndev = tx_ring->ndev;
	int tx_frm_cnt = 0, tx_byte_cnt = 0;
	struct enetc_tx_swbd *tx_swbd;
	int i, bds_to_clean;
	bool do_tstamp;
	u64 tstamp = 0;

	i = tx_ring->next_to_clean;
	tx_swbd = &tx_ring->tx_swbd[i];
	bds_to_clean = FUNC3(tx_ring, i);

	do_tstamp = false;

	while (bds_to_clean && tx_frm_cnt < ENETC_DEFAULT_TX_WORK) {
		bool is_eof = !!tx_swbd->skb;

		if (FUNC14(tx_swbd->check_wb)) {
			struct enetc_ndev_priv *priv = FUNC11(ndev);
			union enetc_tx_bd *txbd;

			txbd = FUNC1(*tx_ring, i);

			if (txbd->flags & ENETC_TXBD_FLAGS_W &&
			    tx_swbd->do_tstamp) {
				FUNC5(&priv->si->hw, txbd,
						    &tstamp);
				do_tstamp = true;
			}
		}

		if (FUNC9(tx_swbd->dma))
			FUNC7(tx_ring, tx_swbd);

		if (is_eof) {
			if (FUNC14(do_tstamp)) {
				FUNC6(tx_swbd->skb, tstamp);
				do_tstamp = false;
			}
			FUNC10(tx_swbd->skb, napi_budget);
			tx_swbd->skb = NULL;
		}

		tx_byte_cnt += tx_swbd->len;

		bds_to_clean--;
		tx_swbd++;
		i++;
		if (FUNC14(i == tx_ring->bd_count)) {
			i = 0;
			tx_swbd = tx_ring->tx_swbd;
		}

		/* BD iteration loop end */
		if (is_eof) {
			tx_frm_cnt++;
			/* re-arm interrupt source */
			FUNC8(tx_ring->idr, FUNC0(tx_ring->index) |
				     FUNC0(16 + tx_ring->index));
		}

		if (FUNC14(!bds_to_clean))
			bds_to_clean = FUNC3(tx_ring, i);
	}

	tx_ring->next_to_clean = i;
	tx_ring->stats.packets += tx_frm_cnt;
	tx_ring->stats.bytes += tx_byte_cnt;

	if (FUNC14(tx_frm_cnt && FUNC12(ndev) &&
		     FUNC2(ndev, tx_ring->index) &&
		     (FUNC4(tx_ring) >= ENETC_TXBDS_MAX_NEEDED))) {
		FUNC13(ndev, tx_ring->index);
	}

	return tx_frm_cnt != ENETC_DEFAULT_TX_WORK;
}