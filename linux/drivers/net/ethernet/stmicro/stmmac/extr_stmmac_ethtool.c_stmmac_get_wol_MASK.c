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
struct stmmac_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  wolopts; int /*<<< orphan*/  device; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int /*<<< orphan*/  wolopts; } ;

/* Variables and functions */
 int WAKE_MAGIC ; 
 int WAKE_UCAST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct stmmac_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct stmmac_priv *priv = FUNC3(dev);

	FUNC1(&priv->lock);
	if (FUNC0(priv->device)) {
		wol->supported = WAKE_MAGIC | WAKE_UCAST;
		wol->wolopts = priv->wolopts;
	}
	FUNC2(&priv->lock);
}