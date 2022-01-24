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
typedef  int u32 ;
struct phy_device {int pause; int asym_pause; int /*<<< orphan*/  link; } ;
struct net_device {struct phy_device* phydev; } ;
struct nb8800_priv {int pause_rx; int pause_tx; int /*<<< orphan*/  napi; scalar_t__ pause_aneg; } ;

/* Variables and functions */
 int /*<<< orphan*/  NB8800_RXC_CR ; 
 int /*<<< orphan*/  NB8800_RX_CTL ; 
 int RCR_FL ; 
 int /*<<< orphan*/  RX_PAUSE_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nb8800_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nb8800_priv*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct nb8800_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct nb8800_priv* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev)
{
	struct nb8800_priv *priv = FUNC7(dev);
	struct phy_device *phydev = dev->phydev;
	u32 rxcr;

	if (priv->pause_aneg) {
		if (!phydev || !phydev->link)
			return;

		priv->pause_rx = phydev->pause;
		priv->pause_tx = phydev->pause ^ phydev->asym_pause;
	}

	FUNC3(priv, NB8800_RX_CTL, RX_PAUSE_EN, priv->pause_rx);

	rxcr = FUNC5(priv, NB8800_RXC_CR);
	if (!!(rxcr & RCR_FL) == priv->pause_tx)
		return;

	if (FUNC8(dev)) {
		FUNC0(&priv->napi);
		FUNC9(dev);
		FUNC2(dev);
		FUNC4(priv, NB8800_RXC_CR, RCR_FL, priv->pause_tx);
		FUNC6(dev);
		FUNC10(dev);
		FUNC1(&priv->napi);
	} else {
		FUNC4(priv, NB8800_RXC_CR, RCR_FL, priv->pause_tx);
	}
}