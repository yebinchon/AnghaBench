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
struct TYPE_2__ {scalar_t__ eee; } ;
struct stmmac_priv {int eee_active; int /*<<< orphan*/  hw; int /*<<< orphan*/  eee_enabled; TYPE_1__ dma_cap; int /*<<< orphan*/  ioaddr; } ;
struct phylink_config {int /*<<< orphan*/  dev; } ;
struct phy_device {int dummy; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;

/* Variables and functions */
 struct stmmac_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct phy_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct stmmac_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct stmmac_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct phylink_config *config,
			       unsigned int mode, phy_interface_t interface,
			       struct phy_device *phy)
{
	struct stmmac_priv *priv = FUNC0(FUNC5(config->dev));

	FUNC3(priv, priv->ioaddr, true);
	if (phy && priv->dma_cap.eee) {
		priv->eee_active = FUNC1(phy, 1) >= 0;
		priv->eee_enabled = FUNC2(priv);
		FUNC4(priv, priv->hw, true);
	}
}