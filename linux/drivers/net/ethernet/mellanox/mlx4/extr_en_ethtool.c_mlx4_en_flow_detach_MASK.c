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
struct net_device {int dummy; } ;
struct mlx4_en_priv {TYPE_1__* mdev; struct ethtool_flow_id* ethtool_rules; } ;
struct TYPE_4__ {size_t location; } ;
struct ethtool_rxnfc {TYPE_2__ fs; } ;
struct ethtool_rx_flow_spec {int dummy; } ;
struct ethtool_flow_id {int /*<<< orphan*/  list; int /*<<< orphan*/  flow_spec; scalar_t__ id; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 size_t MAX_NUM_OF_FS_RULES ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct mlx4_en_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			       struct ethtool_rxnfc *cmd)
{
	int err = 0;
	struct ethtool_flow_id *rule;
	struct mlx4_en_priv *priv = FUNC4(dev);

	if (cmd->fs.location >= MAX_NUM_OF_FS_RULES)
		return -EINVAL;

	rule = &priv->ethtool_rules[cmd->fs.location];
	if (!rule->id) {
		err =  -ENOENT;
		goto out;
	}

	err = FUNC3(priv->mdev->dev, rule->id);
	if (err) {
		FUNC0(priv, "Fail to detach network rule at location %d. registration id = 0x%llx\n",
		       cmd->fs.location, rule->id);
		goto out;
	}
	rule->id = 0;
	FUNC2(&rule->flow_spec, 0, sizeof(struct ethtool_rx_flow_spec));
	FUNC1(&rule->list);
out:
	return err;

}