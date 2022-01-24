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
struct xgmac_priv {int wolopts; int /*<<< orphan*/  device; } ;
struct net_device {int /*<<< orphan*/  irq; } ;
struct ethtool_wolinfo {int wolopts; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 int WAKE_MAGIC ; 
 int WAKE_UCAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct xgmac_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			      struct ethtool_wolinfo *wol)
{
	struct xgmac_priv *priv = FUNC4(dev);
	u32 support = WAKE_MAGIC | WAKE_UCAST;

	if (!FUNC0(priv->device))
		return -ENOTSUPP;

	if (wol->wolopts & ~support)
		return -EINVAL;

	priv->wolopts = wol->wolopts;

	if (wol->wolopts) {
		FUNC1(priv->device, 1);
		FUNC3(dev->irq);
	} else {
		FUNC1(priv->device, 0);
		FUNC2(dev->irq);
	}

	return 0;
}