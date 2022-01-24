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
typedef  int u16 ;
struct netsec_priv {TYPE_1__* desc_ring; int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  mii_bus; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int BMCR_PDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DESC_NUM ; 
 int /*<<< orphan*/  MII_BMCR ; 
 size_t NETSEC_RING_RX ; 
 size_t NETSEC_RING_TX ; 
 struct netsec_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct netsec_priv*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct netsec_priv*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct netsec_priv*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *ndev)
{
	struct netsec_priv *priv = FUNC1(ndev);
	int ret;
	u16 data;

	FUNC0(DESC_NUM);

	ret = FUNC2(priv, NETSEC_RING_TX);
	if (ret)
		return ret;

	ret = FUNC2(priv, NETSEC_RING_RX);
	if (ret)
		goto err1;

	/* set phy power down */
	data = FUNC4(priv->mii_bus, priv->phy_addr, MII_BMCR) |
		BMCR_PDOWN;
	FUNC5(priv->mii_bus, priv->phy_addr, MII_BMCR, data);

	ret = FUNC6(priv, true);
	if (ret)
		goto err2;

	FUNC7(&priv->desc_ring[NETSEC_RING_TX].lock);
	FUNC7(&priv->desc_ring[NETSEC_RING_RX].lock);

	return 0;
err2:
	FUNC3(priv, NETSEC_RING_RX);
err1:
	FUNC3(priv, NETSEC_RING_TX);
	return ret;
}