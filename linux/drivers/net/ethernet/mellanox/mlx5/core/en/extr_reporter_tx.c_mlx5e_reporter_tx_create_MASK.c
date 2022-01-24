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
struct mlx5e_priv {struct devlink_health_reporter* tx_reporter; int /*<<< orphan*/  netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct devlink_health_reporter {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct devlink_health_reporter*) ; 
 int /*<<< orphan*/  MLX5_REPORTER_TX_GRACEFUL_PERIOD ; 
 int FUNC1 (struct devlink_health_reporter*) ; 
 struct devlink_health_reporter* FUNC2 (struct devlink*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct mlx5e_priv*) ; 
 int /*<<< orphan*/  mlx5_tx_reporter_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct devlink* FUNC4 (struct mlx5_core_dev*) ; 

int FUNC5(struct mlx5e_priv *priv)
{
	struct devlink_health_reporter *reporter;
	struct mlx5_core_dev *mdev = priv->mdev;
	struct devlink *devlink;

	devlink = FUNC4(mdev);
	reporter =
		FUNC2(devlink, &mlx5_tx_reporter_ops,
					       MLX5_REPORTER_TX_GRACEFUL_PERIOD,
					       true, priv);
	if (FUNC0(reporter)) {
		FUNC3(priv->netdev,
			    "Failed to create tx reporter, err = %ld\n",
			    FUNC1(reporter));
		return FUNC1(reporter);
	}
	priv->tx_reporter = reporter;
	return 0;
}