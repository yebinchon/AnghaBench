#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  tpd ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct TYPE_2__ {int produce_idx; } ;
struct emac_tx_queue {int produce_shift; int produce_mask; scalar_t__ produce_reg; TYPE_1__ tpd; } ;
struct emac_tpd {int dummy; } ;
struct emac_adapter {scalar_t__ base; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ETH_HLEN ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (struct emac_tpd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_tpd*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct emac_tpd*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int) ; 
 scalar_t__ FUNC6 (struct emac_tx_queue*) ; 
 scalar_t__ FUNC7 (struct emac_adapter*,struct emac_tx_queue*,struct sk_buff*,struct emac_tpd*) ; 
 int /*<<< orphan*/  FUNC8 (struct emac_adapter*,struct emac_tx_queue*,struct sk_buff*,struct emac_tpd*) ; 
 int /*<<< orphan*/  FUNC9 (struct emac_tpd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 

int FUNC15(struct emac_adapter *adpt, struct emac_tx_queue *tx_q,
			 struct sk_buff *skb)
{
	struct emac_tpd tpd;
	u32 prod_idx;

	FUNC9(&tpd, 0, sizeof(tpd));

	if (FUNC7(adpt, tx_q, skb, &tpd) != 0) {
		FUNC4(skb);
		return NETDEV_TX_OK;
	}

	if (FUNC14(skb)) {
		u16 tag;

		FUNC0(FUNC13(skb), tag);
		FUNC1(&tpd, tag);
		FUNC2(&tpd, 1);
	}

	if (FUNC12(skb) != ETH_HLEN)
		FUNC3(&tpd, 1);

	FUNC8(adpt, tx_q, skb, &tpd);

	FUNC10(adpt->netdev, skb->len);

	/* Make sure the are enough free descriptors to hold one
	 * maximum-sized SKB.  We need one desc for each fragment,
	 * one for the checksum (emac_tso_csum), one for TSO, and
	 * and one for the SKB header.
	 */
	if (FUNC6(tx_q) < (MAX_SKB_FRAGS + 3))
		FUNC11(adpt->netdev);

	/* update produce idx */
	prod_idx = (tx_q->tpd.produce_idx << tx_q->produce_shift) &
		    tx_q->produce_mask;
	FUNC5(adpt->base + tx_q->produce_reg,
			  tx_q->produce_mask, prod_idx);

	return NETDEV_TX_OK;
}