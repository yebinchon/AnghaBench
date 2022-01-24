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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  key; int /*<<< orphan*/ * table; } ;
struct stmmac_priv {TYPE_1__* plat; TYPE_2__ rss; int /*<<< orphan*/  hw; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_queues_to_use; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int EOPNOTSUPP ; 
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ; 
 scalar_t__ const ETH_RSS_HASH_TOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__ const*,int) ; 
 struct stmmac_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct stmmac_priv*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, const u32 *indir,
			   const u8 *key, const u8 hfunc)
{
	struct stmmac_priv *priv = FUNC2(dev);
	int i;

	if ((hfunc != ETH_RSS_HASH_NO_CHANGE) && (hfunc != ETH_RSS_HASH_TOP))
		return -EOPNOTSUPP;

	if (indir) {
		for (i = 0; i < FUNC0(priv->rss.table); i++)
			priv->rss.table[i] = indir[i];
	}

	if (key)
		FUNC1(priv->rss.key, key, sizeof(priv->rss.key));

	return FUNC3(priv, priv->hw, &priv->rss,
				    priv->plat->rx_queues_to_use);
}