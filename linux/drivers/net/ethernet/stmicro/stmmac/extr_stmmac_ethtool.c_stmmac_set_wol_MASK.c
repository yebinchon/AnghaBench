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
struct TYPE_2__ {int /*<<< orphan*/  pmt_magic_frame; } ;
struct stmmac_priv {int wolopts; int /*<<< orphan*/  lock; int /*<<< orphan*/  wol_irq; int /*<<< orphan*/  device; TYPE_1__ dma_cap; scalar_t__ hw_cap_support; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;

/* Variables and functions */
 int EINVAL ; 
 int WAKE_MAGIC ; 
 int WAKE_UCAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct stmmac_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct stmmac_priv *priv = FUNC6(dev);
	u32 support = WAKE_MAGIC | WAKE_UCAST;

	/* By default almost all GMAC devices support the WoL via
	 * magic frame but we can disable it if the HW capability
	 * register shows no support for pmt_magic_frame. */
	if ((priv->hw_cap_support) && (!priv->dma_cap.pmt_magic_frame))
		wol->wolopts &= ~WAKE_MAGIC;

	if (!FUNC0(priv->device))
		return -EINVAL;

	if (wol->wolopts & ~support)
		return -EINVAL;

	if (wol->wolopts) {
		FUNC7("stmmac: wakeup enable\n");
		FUNC1(priv->device, 1);
		FUNC3(priv->wol_irq);
	} else {
		FUNC1(priv->device, 0);
		FUNC2(priv->wol_irq);
	}

	FUNC4(&priv->lock);
	priv->wolopts = wol->wolopts;
	FUNC5(&priv->lock);

	return 0;
}