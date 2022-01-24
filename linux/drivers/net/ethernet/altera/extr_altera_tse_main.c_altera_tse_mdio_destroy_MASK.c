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
struct net_device {int dummy; } ;
struct altera_tse_private {TYPE_1__* mdio; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct altera_tse_private* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct altera_tse_private*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct altera_tse_private *priv = FUNC3(dev);

	if (priv->mdio == NULL)
		return;

	if (FUNC4(priv))
		FUNC2(dev, "MDIO bus %s: removed\n",
			    priv->mdio->id);

	FUNC1(priv->mdio);
	FUNC0(priv->mdio);
	priv->mdio = NULL;
}