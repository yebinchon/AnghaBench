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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  key; int /*<<< orphan*/ * table; } ;
struct stmmac_priv {TYPE_1__ rss; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ETH_RSS_HASH_TOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct stmmac_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, u32 *indir, u8 *key,
			   u8 *hfunc)
{
	struct stmmac_priv *priv = FUNC2(dev);
	int i;

	if (indir) {
		for (i = 0; i < FUNC0(priv->rss.table); i++)
			indir[i] = priv->rss.table[i];
	}

	if (key)
		FUNC1(key, priv->rss.key, sizeof(priv->rss.key));
	if (hfunc)
		*hfunc = ETH_RSS_HASH_TOP;

	return 0;
}