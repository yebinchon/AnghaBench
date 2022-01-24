#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dpaa2_eth_priv {int rx_cls_enabled; TYPE_2__* net_dev; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPAA2_ETH_DIST_ALL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpaa2_eth_priv*) ; 
 scalar_t__ FUNC3 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct dpaa2_eth_priv*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dpaa2_eth_priv *priv)
{
	struct device *dev = priv->net_dev->dev.parent;
	int err;

	/* Check if we actually support Rx flow classification */
	if (FUNC3(priv)) {
		FUNC0(dev, "Rx cls not supported by current MC version\n");
		return -EOPNOTSUPP;
	}

	if (!FUNC1(priv)) {
		FUNC0(dev, "Rx cls disabled in DPNI options\n");
		return -EOPNOTSUPP;
	}

	if (!FUNC4(priv)) {
		FUNC0(dev, "Rx cls disabled for single queue DPNIs\n");
		return -EOPNOTSUPP;
	}

	/* If there is no support for masking in the classification table,
	 * we don't set a default key, as it will depend on the rules
	 * added by the user at runtime.
	 */
	if (!FUNC2(priv))
		goto out;

	err = FUNC5(priv->net_dev, DPAA2_ETH_DIST_ALL);
	if (err)
		return err;

out:
	priv->rx_cls_enabled = 1;

	return 0;
}