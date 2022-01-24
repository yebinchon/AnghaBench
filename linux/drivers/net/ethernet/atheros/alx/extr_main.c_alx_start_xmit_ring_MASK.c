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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct alx_txd {int dummy; } ;
struct alx_tx_queue {size_t write_idx; int count; int /*<<< orphan*/  p_reg; struct alx_txd* tpd; int /*<<< orphan*/  netdev; } ;
struct alx_priv {int /*<<< orphan*/  hw; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct alx_tx_queue*) ; 
 scalar_t__ FUNC1 (struct alx_tx_queue*,struct sk_buff*) ; 
 int FUNC2 (struct alx_tx_queue*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,struct alx_txd*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct alx_txd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct alx_txd*,int /*<<< orphan*/ ,int) ; 
 struct alx_priv* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static netdev_tx_t FUNC13(struct sk_buff *skb,
				       struct alx_tx_queue *txq)
{
	struct alx_priv *alx;
	struct alx_txd *first;
	int tso;

	alx = FUNC9(txq->netdev);

	if (FUNC2(txq) < FUNC3(skb)) {
		FUNC11(FUNC0(txq));
		goto drop;
	}

	first = &txq->tpd[txq->write_idx];
	FUNC8(first, 0, sizeof(*first));

	tso = FUNC4(skb, first);
	if (tso < 0)
		goto drop;
	else if (!tso && FUNC5(skb, first))
		goto drop;

	if (FUNC1(txq, skb) < 0)
		goto drop;

	FUNC10(FUNC0(txq), skb->len);

	/* flush updates before updating hardware */
	FUNC12();
	FUNC6(&alx->hw, txq->p_reg, txq->write_idx);

	if (FUNC2(txq) < txq->count / 8)
		FUNC11(FUNC0(txq));

	return NETDEV_TX_OK;

drop:
	FUNC7(skb);
	return NETDEV_TX_OK;
}