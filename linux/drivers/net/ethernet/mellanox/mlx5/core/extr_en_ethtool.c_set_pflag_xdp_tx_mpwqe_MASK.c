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
struct TYPE_2__ {int /*<<< orphan*/  params; } ;
struct mlx5e_priv {TYPE_1__ channels; int /*<<< orphan*/  state; struct mlx5_core_dev* mdev; } ;
struct mlx5e_channels {int /*<<< orphan*/  params; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MLX5E_PFLAG_XDP_TX_MPWQE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enhanced_multi_pkt_send_wqe ; 
 int FUNC2 (struct mlx5e_priv*,struct mlx5e_channels*,int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, bool enable)
{
	struct mlx5e_priv *priv = FUNC3(netdev);
	struct mlx5_core_dev *mdev = priv->mdev;
	struct mlx5e_channels new_channels = {};
	int err;

	if (enable && !FUNC1(mdev, enhanced_multi_pkt_send_wqe))
		return -EOPNOTSUPP;

	new_channels.params = priv->channels.params;

	FUNC0(&new_channels.params, MLX5E_PFLAG_XDP_TX_MPWQE, enable);

	if (!FUNC4(MLX5E_STATE_OPENED, &priv->state)) {
		priv->channels.params = new_channels.params;
		return 0;
	}

	err = FUNC2(priv, &new_channels, NULL);
	return err;
}