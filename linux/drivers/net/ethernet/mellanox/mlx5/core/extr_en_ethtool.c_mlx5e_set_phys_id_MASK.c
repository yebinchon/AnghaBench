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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETHTOOL_ID_ACTIVE 129 
#define  ETHTOOL_ID_INACTIVE 128 
 int /*<<< orphan*/  MLX5_BEACON_DURATION_INF ; 
 int /*<<< orphan*/  MLX5_BEACON_DURATION_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  beacon_led ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev,
			     enum ethtool_phys_id_state state)
{
	struct mlx5e_priv *priv = FUNC2(dev);
	struct mlx5_core_dev *mdev = priv->mdev;
	u16 beacon_duration;

	if (!FUNC0(mdev, beacon_led))
		return -EOPNOTSUPP;

	switch (state) {
	case ETHTOOL_ID_ACTIVE:
		beacon_duration = MLX5_BEACON_DURATION_INF;
		break;
	case ETHTOOL_ID_INACTIVE:
		beacon_duration = MLX5_BEACON_DURATION_OFF;
		break;
	default:
		return -EOPNOTSUPP;
	}

	return FUNC1(mdev, beacon_duration);
}