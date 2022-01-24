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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int /*<<< orphan*/ * sopass; } ;
struct device {int dummy; } ;
struct bcmgenet_priv {int wol_irq_disabled; int wolopts; int /*<<< orphan*/  wol_irq; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  MPD_PW_EN ; 
 int /*<<< orphan*/  UMAC_MPD_CTRL ; 
 int /*<<< orphan*/  UMAC_MPD_PW_LS ; 
 int /*<<< orphan*/  UMAC_MPD_PW_MS ; 
 int WAKE_MAGIC ; 
 int WAKE_MAGICSECURE ; 
 int /*<<< orphan*/  FUNC0 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct bcmgenet_priv* FUNC8 (struct net_device*) ; 

int FUNC9(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct bcmgenet_priv *priv = FUNC8(dev);
	struct device *kdev = &priv->pdev->dev;
	u32 reg;

	if (!FUNC2(kdev))
		return -ENOTSUPP;

	if (wol->wolopts & ~(WAKE_MAGIC | WAKE_MAGICSECURE))
		return -EINVAL;

	reg = FUNC0(priv, UMAC_MPD_CTRL);
	if (wol->wolopts & WAKE_MAGICSECURE) {
		FUNC1(priv, FUNC6(&wol->sopass[0]),
				     UMAC_MPD_PW_MS);
		FUNC1(priv, FUNC7(&wol->sopass[2]),
				     UMAC_MPD_PW_LS);
		reg |= MPD_PW_EN;
	} else {
		reg &= ~MPD_PW_EN;
	}
	FUNC1(priv, reg, UMAC_MPD_CTRL);

	/* Flag the device and relevant IRQ as wakeup capable */
	if (wol->wolopts) {
		FUNC3(kdev, 1);
		/* Avoid unbalanced enable_irq_wake calls */
		if (priv->wol_irq_disabled)
			FUNC5(priv->wol_irq);
		priv->wol_irq_disabled = false;
	} else {
		FUNC3(kdev, 0);
		/* Avoid unbalanced disable_irq_wake calls */
		if (!priv->wol_irq_disabled)
			FUNC4(priv->wol_irq);
		priv->wol_irq_disabled = true;
	}

	priv->wolopts = wol->wolopts;

	return 0;
}