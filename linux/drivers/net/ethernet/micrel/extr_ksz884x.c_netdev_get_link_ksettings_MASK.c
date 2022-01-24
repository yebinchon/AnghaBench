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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  advertising; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; } ;
struct dev_priv {int /*<<< orphan*/  advertising; int /*<<< orphan*/  mii_if; struct dev_info* adapter; } ;
struct dev_info {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  TP ; 
 int /*<<< orphan*/  advertising ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ethtool_link_ksettings*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct dev_priv* FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
				     struct ethtool_link_ksettings *cmd)
{
	struct dev_priv *priv = FUNC5(dev);
	struct dev_info *hw_priv = priv->adapter;

	FUNC3(&hw_priv->lock);
	FUNC2(&priv->mii_if, cmd);
	FUNC1(cmd, advertising, TP);
	FUNC4(&hw_priv->lock);

	/* Save advertised settings for workaround in next function. */
	FUNC0(&priv->advertising,
						cmd->link_modes.advertising);

	return 0;
}