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
struct stmmac_priv {int eee_active; int /*<<< orphan*/  hw; int /*<<< orphan*/  ioaddr; } ;
struct phylink_config {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;

/* Variables and functions */
 struct stmmac_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct stmmac_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct stmmac_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct phylink_config *config,
				 unsigned int mode, phy_interface_t interface)
{
	struct stmmac_priv *priv = FUNC0(FUNC4(config->dev));

	FUNC2(priv, priv->ioaddr, false);
	priv->eee_active = false;
	FUNC1(priv);
	FUNC3(priv, priv->hw, false);
}