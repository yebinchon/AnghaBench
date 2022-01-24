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
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct device {int dummy; } ;
struct net_device {TYPE_1__ stats; struct device dev; } ;
struct emac_priv {int /*<<< orphan*/  txchan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct emac_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct emac_priv*) ; 
 struct emac_priv* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct emac_priv*) ; 

__attribute__((used)) static void FUNC7(struct net_device *ndev)
{
	struct emac_priv *priv = FUNC5(ndev);
	struct device *emac_dev = &ndev->dev;

	if (FUNC6(priv))
		FUNC2(emac_dev, "DaVinci EMAC: xmit timeout, restarting TX");

	ndev->stats.tx_errors++;
	FUNC3(priv);
	FUNC1(priv->txchan);
	FUNC0(priv->txchan);
	FUNC4(priv);
}