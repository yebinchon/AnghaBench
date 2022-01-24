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
struct mlx5e_params {int lro_en; scalar_t__ rq_wq_type; } ;
struct TYPE_4__ {struct mlx5e_params params; } ;
struct TYPE_3__ {scalar_t__ refcnt; } ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  state; TYPE_2__ channels; TYPE_1__ xsk; struct mlx5_core_dev* mdev; } ;
struct mlx5e_channels {struct mlx5e_params params; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5E_PFLAG_RX_STRIDING_RQ ; 
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 scalar_t__ MLX5_WQ_TYPE_CYCLIC ; 
 int FUNC1 (struct mlx5e_priv*) ; 
 scalar_t__ FUNC2 (struct mlx5_core_dev*,struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx5e_priv*,struct mlx5e_channels*,int (*) (struct mlx5e_priv*)) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev, bool enable)
{
	struct mlx5e_priv *priv = FUNC6(netdev);
	struct mlx5_core_dev *mdev = priv->mdev;
	struct mlx5e_channels new_channels = {};
	struct mlx5e_params *old_params;
	int err = 0;
	bool reset;

	FUNC4(&priv->state_lock);

	if (enable && priv->xsk.refcnt) {
		FUNC7(netdev, "LRO is incompatible with AF_XDP (%hu XSKs are active)\n",
			    priv->xsk.refcnt);
		err = -EINVAL;
		goto out;
	}

	old_params = &priv->channels.params;
	if (enable && !FUNC0(old_params, MLX5E_PFLAG_RX_STRIDING_RQ)) {
		FUNC7(netdev, "can't set LRO with legacy RQ\n");
		err = -EINVAL;
		goto out;
	}

	reset = FUNC8(MLX5E_STATE_OPENED, &priv->state);

	new_channels.params = *old_params;
	new_channels.params.lro_en = enable;

	if (old_params->rq_wq_type != MLX5_WQ_TYPE_CYCLIC) {
		if (FUNC2(mdev, old_params, NULL) ==
		    FUNC2(mdev, &new_channels.params, NULL))
			reset = false;
	}

	if (!reset) {
		*old_params = new_channels.params;
		err = FUNC1(priv);
		goto out;
	}

	err = FUNC3(priv, &new_channels, mlx5e_modify_tirs_lro);
out:
	FUNC5(&priv->state_lock);
	return err;
}