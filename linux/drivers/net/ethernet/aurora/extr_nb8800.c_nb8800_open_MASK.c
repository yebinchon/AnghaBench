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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct nb8800_priv {int /*<<< orphan*/  napi; int /*<<< orphan*/  phy_mode; int /*<<< orphan*/  phy_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  NB8800_RXC_SR ; 
 int /*<<< orphan*/  NB8800_TXC_SR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  nb8800_irq ; 
 int /*<<< orphan*/  nb8800_link_reconfigure ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct nb8800_priv*,int /*<<< orphan*/ ,int) ; 
 struct nb8800_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 struct phy_device* FUNC13 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct phy_device*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC16(struct net_device *dev)
{
	struct nb8800_priv *priv = FUNC10(dev);
	struct phy_device *phydev;
	int err;

	/* clear any pending interrupts */
	FUNC9(priv, NB8800_RXC_SR, 0xf);
	FUNC9(priv, NB8800_TXC_SR, 0xf);

	err = FUNC4(dev);
	if (err)
		return err;

	err = FUNC15(dev->irq, nb8800_irq, 0, FUNC0(&dev->dev), dev);
	if (err)
		goto err_free_dma;

	FUNC5(dev, true);
	FUNC6(dev, true);

	phydev = FUNC13(dev, priv->phy_node,
				nb8800_link_reconfigure, 0,
				priv->phy_mode);
	if (!phydev) {
		err = -ENODEV;
		goto err_free_irq;
	}

	FUNC7(dev);

	FUNC11(dev);
	FUNC2(&priv->napi);
	FUNC12(dev);

	FUNC8(dev);
	FUNC14(phydev);

	return 0;

err_free_irq:
	FUNC1(dev->irq, dev);
err_free_dma:
	FUNC3(dev);

	return err;
}