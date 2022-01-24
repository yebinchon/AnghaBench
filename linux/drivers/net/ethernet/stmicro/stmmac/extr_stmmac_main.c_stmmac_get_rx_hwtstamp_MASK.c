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
struct stmmac_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  adv_ts; TYPE_1__* plat; int /*<<< orphan*/  hwts_rx_en; } ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct dma_desc {int dummy; } ;
struct TYPE_2__ {scalar_t__ has_xgmac; scalar_t__ has_gmac4; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct skb_shared_hwtstamps* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct stmmac_priv*,struct dma_desc*,struct dma_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct stmmac_priv*,struct dma_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct stmmac_priv *priv, struct dma_desc *p,
				   struct dma_desc *np, struct sk_buff *skb)
{
	struct skb_shared_hwtstamps *shhwtstamp = NULL;
	struct dma_desc *desc = p;
	u64 ns = 0;

	if (!priv->hwts_rx_en)
		return;
	/* For GMAC4, the valid timestamp is from CTX next desc. */
	if (priv->plat->has_gmac4 || priv->plat->has_xgmac)
		desc = np;

	/* Check if timestamp is available */
	if (FUNC4(priv, p, np, priv->adv_ts)) {
		FUNC5(priv, desc, priv->adv_ts, &ns);
		FUNC1(priv->dev, "get valid RX hw timestamp %llu\n", ns);
		shhwtstamp = FUNC3(skb);
		FUNC0(shhwtstamp, 0, sizeof(struct skb_shared_hwtstamps));
		shhwtstamp->hwtstamp = FUNC2(ns);
	} else  {
		FUNC1(priv->dev, "cannot get RX hw timestamp\n");
	}
}