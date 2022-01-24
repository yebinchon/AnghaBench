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
struct net_device {int dummy; } ;
struct ethtool_rx_flow_spec {int dummy; } ;
struct dpaa2_eth_priv {scalar_t__ rx_cls_fields; struct dpaa2_eth_cls_rule* cls_rules; int /*<<< orphan*/  rx_cls_enabled; } ;
struct dpaa2_eth_cls_rule {int in_use; struct ethtool_rx_flow_spec fs; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct net_device*,struct ethtool_rx_flow_spec*,int) ; 
 int FUNC1 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpaa2_eth_priv*) ; 
 struct dpaa2_eth_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dpaa2_eth_priv*) ; 

__attribute__((used)) static int FUNC5(struct net_device *net_dev,
			   struct ethtool_rx_flow_spec *new_fs,
			   int location)
{
	struct dpaa2_eth_priv *priv = FUNC3(net_dev);
	struct dpaa2_eth_cls_rule *rule;
	int err = -EINVAL;

	if (!priv->rx_cls_enabled)
		return -EOPNOTSUPP;

	if (location >= FUNC1(priv))
		return -EINVAL;

	rule = &priv->cls_rules[location];

	/* If a rule is present at the specified location, delete it. */
	if (rule->in_use) {
		err = FUNC0(net_dev, &rule->fs, false);
		if (err)
			return err;

		rule->in_use = 0;

		if (!FUNC2(priv) && !FUNC4(priv))
			priv->rx_cls_fields = 0;
	}

	/* If no new entry to add, return here */
	if (!new_fs)
		return err;

	err = FUNC0(net_dev, new_fs, true);
	if (err)
		return err;

	rule->in_use = 1;
	rule->fs = *new_fs;

	return 0;
}