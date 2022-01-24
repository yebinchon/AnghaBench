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
typedef  int /*<<< orphan*/  u64 ;
struct stmmac_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  hw; int /*<<< orphan*/  adv_ts; int /*<<< orphan*/  hwts_tx_en; } ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct dma_desc {int dummy; } ;
struct TYPE_2__ {int tx_flags; } ;

/* Variables and functions */
 int SKBTX_IN_PROGRESS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct skb_shared_hwtstamps*) ; 
 int /*<<< orphan*/  FUNC6 (struct stmmac_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct stmmac_priv*,struct dma_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct stmmac_priv*,struct dma_desc*) ; 

__attribute__((used)) static void FUNC9(struct stmmac_priv *priv,
				   struct dma_desc *p, struct sk_buff *skb)
{
	struct skb_shared_hwtstamps shhwtstamp;
	bool found = false;
	u64 ns = 0;

	if (!priv->hwts_tx_en)
		return;

	/* exit if skb doesn't support hw tstamp */
	if (FUNC0(!skb || !(FUNC4(skb)->tx_flags & SKBTX_IN_PROGRESS)))
		return;

	/* check tx tstamp status */
	if (FUNC8(priv, p)) {
		FUNC7(priv, p, priv->adv_ts, &ns);
		found = true;
	} else if (!FUNC6(priv, priv->hw, &ns)) {
		found = true;
	}

	if (found) {
		FUNC1(&shhwtstamp, 0, sizeof(struct skb_shared_hwtstamps));
		shhwtstamp.hwtstamp = FUNC3(ns);

		FUNC2(priv->dev, "get valid TX hw timestamp %llu\n", ns);
		/* pass tstamp to stack */
		FUNC5(skb, &shhwtstamp);
	}
}