#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mwl8k_tx_queue {scalar_t__ txd_dma; struct mwl8k_tx_desc* txd; int /*<<< orphan*/ * skb; scalar_t__ tail; scalar_t__ head; scalar_t__ len; } ;
struct mwl8k_tx_desc {int /*<<< orphan*/  next_txd_phys_addr; scalar_t__ status; } ;
struct mwl8k_priv {int /*<<< orphan*/  pdev; struct mwl8k_tx_queue* txq; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct mwl8k_priv* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MWL8K_TX_DESCS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct mwl8k_tx_desc*,scalar_t__) ; 
 struct mwl8k_tx_desc* FUNC3 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw, int index)
{
	struct mwl8k_priv *priv = hw->priv;
	struct mwl8k_tx_queue *txq = priv->txq + index;
	int size;
	int i;

	txq->len = 0;
	txq->head = 0;
	txq->tail = 0;

	size = MWL8K_TX_DESCS * sizeof(struct mwl8k_tx_desc);

	txq->txd = FUNC3(priv->pdev, size, &txq->txd_dma);
	if (txq->txd == NULL) {
		FUNC4(hw->wiphy, "failed to alloc TX descriptors\n");
		return -ENOMEM;
	}

	txq->skb = FUNC1(MWL8K_TX_DESCS, sizeof(*txq->skb), GFP_KERNEL);
	if (txq->skb == NULL) {
		FUNC2(priv->pdev, size, txq->txd, txq->txd_dma);
		return -ENOMEM;
	}

	for (i = 0; i < MWL8K_TX_DESCS; i++) {
		struct mwl8k_tx_desc *tx_desc;
		int nexti;

		tx_desc = txq->txd + i;
		nexti = (i + 1) % MWL8K_TX_DESCS;

		tx_desc->status = 0;
		tx_desc->next_txd_phys_addr =
			FUNC0(txq->txd_dma + nexti * sizeof(*tx_desc));
	}

	return 0;
}