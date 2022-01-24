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
struct phy_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  irq; struct phy_device* phydev; } ;
struct mpc52xx_fec_priv {int /*<<< orphan*/  t_irq; int /*<<< orphan*/  r_irq; int /*<<< orphan*/  rx_dmatsk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct mpc52xx_fec_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct phy_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct mpc52xx_fec_priv *priv = FUNC3(dev);
	struct phy_device *phydev = dev->phydev;

	FUNC4(dev);

	FUNC2(dev);

	FUNC1(dev, priv->rx_dmatsk);

	FUNC0(dev->irq, dev);
	FUNC0(priv->r_irq, dev);
	FUNC0(priv->t_irq, dev);

	if (phydev) {
		/* power down phy */
		FUNC6(phydev);
		FUNC5(phydev);
	}

	return 0;
}