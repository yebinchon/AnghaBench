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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int /*<<< orphan*/  sopass; } ;
struct device {int dummy; } ;
struct bcm_sysport_priv {int wol_irq_disabled; int wolopts; int /*<<< orphan*/  wol_irq; int /*<<< orphan*/  sopass; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int WAKE_FILTER ; 
 int WAKE_MAGIC ; 
 int WAKE_MAGICSECURE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bcm_sysport_priv* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			       struct ethtool_wolinfo *wol)
{
	struct bcm_sysport_priv *priv = FUNC5(dev);
	struct device *kdev = &priv->pdev->dev;
	u32 supported = WAKE_MAGIC | WAKE_MAGICSECURE | WAKE_FILTER;

	if (!FUNC0(kdev))
		return -ENOTSUPP;

	if (wol->wolopts & ~supported)
		return -EINVAL;

	if (wol->wolopts & WAKE_MAGICSECURE)
		FUNC4(priv->sopass, wol->sopass, sizeof(priv->sopass));

	/* Flag the device and relevant IRQ as wakeup capable */
	if (wol->wolopts) {
		FUNC1(kdev, 1);
		if (priv->wol_irq_disabled)
			FUNC3(priv->wol_irq);
		priv->wol_irq_disabled = 0;
	} else {
		FUNC1(kdev, 0);
		/* Avoid unbalanced disable_irq_wake calls */
		if (!priv->wol_irq_disabled)
			FUNC2(priv->wol_irq);
		priv->wol_irq_disabled = 1;
	}

	priv->wolopts = wol->wolopts;

	return 0;
}