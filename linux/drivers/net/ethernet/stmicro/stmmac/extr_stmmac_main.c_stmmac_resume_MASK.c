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
struct stmmac_priv {int /*<<< orphan*/  phylink; int /*<<< orphan*/  device; int /*<<< orphan*/  lock; scalar_t__ mii; TYPE_1__* plat; scalar_t__ irq_wake; int /*<<< orphan*/  hw; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ clk_ptp_ref; scalar_t__ pclk; scalar_t__ stmmac_clk; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC14 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (struct stmmac_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct stmmac_priv*) ; 

int FUNC22(struct device *dev)
{
	struct net_device *ndev = FUNC1(dev);
	struct stmmac_priv *priv = FUNC5(ndev);

	if (!FUNC7(ndev))
		return 0;

	/* Power Down bit, into the PM register, is cleared
	 * automatically as soon as a magic packet or a Wake-up frame
	 * is received. Anyway, it's better to manually clear
	 * this bit because it can generate problems while resuming
	 * from another devices (e.g. serial console).
	 */
	if (FUNC2(priv->device)) {
		FUNC3(&priv->lock);
		FUNC18(priv, priv->hw, 0);
		FUNC4(&priv->lock);
		priv->irq_wake = 0;
	} else {
		FUNC10(priv->device);
		/* enable the clk previously disabled */
		FUNC0(priv->plat->stmmac_clk);
		FUNC0(priv->plat->pclk);
		if (priv->plat->clk_ptp_ref)
			FUNC0(priv->plat->clk_ptp_ref);
		/* reset the phy so that it's ready */
		if (priv->mii)
			FUNC17(priv->mii);
	}

	FUNC6(ndev);

	FUNC3(&priv->lock);

	FUNC19(priv);

	FUNC13(priv);

	FUNC15(ndev, false);
	FUNC16(priv);
	FUNC20(ndev);

	FUNC14(priv);

	FUNC21(priv);

	FUNC4(&priv->lock);

	if (!FUNC2(priv->device)) {
		FUNC11();
		FUNC9(priv->phylink);
		FUNC12();
	}

	FUNC8(priv->phylink, true);

	return 0;
}