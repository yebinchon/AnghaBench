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
struct mlx5e_profile {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_channels; } ;
struct TYPE_4__ {TYPE_1__ params; } ;
struct mlx5e_priv {TYPE_2__ channels; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_REP_PARAMS_DEF_NUM_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,struct mlx5e_priv*,struct mlx5_core_dev*,struct mlx5e_profile const*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 struct mlx5e_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct mlx5_core_dev *mdev,
			  struct net_device *netdev,
			  const struct mlx5e_profile *profile,
			  void *ppriv)
{
	struct mlx5e_priv *priv = FUNC4(netdev);
	int err;

	err = FUNC2(netdev, priv, mdev, profile, ppriv);
	if (err)
		return err;

	priv->channels.params.num_channels = MLX5E_REP_PARAMS_DEF_NUM_CHANNELS;

	FUNC1(netdev);
	FUNC0(netdev);

	FUNC3(priv);

	return 0;
}