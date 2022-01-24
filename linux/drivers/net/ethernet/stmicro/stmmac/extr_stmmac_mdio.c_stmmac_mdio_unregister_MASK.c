#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stmmac_priv {TYPE_1__* mii; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct stmmac_priv* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *ndev)
{
	struct stmmac_priv *priv = FUNC2(ndev);

	if (!priv->mii)
		return 0;

	FUNC1(priv->mii);
	priv->mii->priv = NULL;
	FUNC0(priv->mii);
	priv->mii = NULL;

	return 0;
}