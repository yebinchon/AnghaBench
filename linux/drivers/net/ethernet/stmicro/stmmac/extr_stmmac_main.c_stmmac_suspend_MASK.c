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
struct stmmac_priv {int irq_wake; int /*<<< orphan*/  speed; int /*<<< orphan*/  lock; TYPE_1__* plat; int /*<<< orphan*/  device; int /*<<< orphan*/  ioaddr; int /*<<< orphan*/  phylink; int /*<<< orphan*/  wolopts; int /*<<< orphan*/  hw; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ stmmac_clk; scalar_t__ pclk; scalar_t__ clk_ptp_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct net_device* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct stmmac_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct stmmac_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct stmmac_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC17 (struct stmmac_priv*) ; 

int FUNC18(struct device *dev)
{
	struct net_device *ndev = FUNC1(dev);
	struct stmmac_priv *priv = FUNC5(ndev);

	if (!ndev || !FUNC7(ndev))
		return 0;

	FUNC8(priv->phylink, false);

	FUNC3(&priv->lock);

	FUNC6(ndev);
	FUNC17(priv);

	FUNC13(priv);

	/* Stop TX/RX DMA */
	FUNC16(priv);

	/* Enable Power down mode by programming the PMT regs */
	if (FUNC2(priv->device)) {
		FUNC15(priv, priv->hw, priv->wolopts);
		priv->irq_wake = 1;
	} else {
		FUNC4(&priv->lock);
		FUNC11();
		FUNC9(priv->phylink);
		FUNC12();
		FUNC3(&priv->lock);

		FUNC14(priv, priv->ioaddr, false);
		FUNC10(priv->device);
		/* Disable clock in case of PWM is off */
		if (priv->plat->clk_ptp_ref)
			FUNC0(priv->plat->clk_ptp_ref);
		FUNC0(priv->plat->pclk);
		FUNC0(priv->plat->stmmac_clk);
	}
	FUNC4(&priv->lock);

	priv->speed = SPEED_UNKNOWN;
	return 0;
}