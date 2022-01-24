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
struct stmmac_priv {TYPE_1__* dev; int /*<<< orphan*/  device; int /*<<< orphan*/  hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stmmac_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct stmmac_priv *priv)
{
	if (!FUNC2(priv->dev->dev_addr)) {
		FUNC3(priv, priv->hw, priv->dev->dev_addr, 0);
		if (!FUNC2(priv->dev->dev_addr))
			FUNC1(priv->dev);
		FUNC0(priv->device, "device MAC address %pM\n",
			 priv->dev->dev_addr);
	}
}