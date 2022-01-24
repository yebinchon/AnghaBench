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
struct TYPE_2__ {int /*<<< orphan*/  params; } ;
struct mlx5e_priv {TYPE_1__ channels; int /*<<< orphan*/  state; int /*<<< orphan*/  mdev; } ;
struct mlx5e_channels {int /*<<< orphan*/  params; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int EOPNOTSUPP ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5E_PFLAG_RX_CQE_COMPRESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cqe_compression ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mlx5e_priv*,char*,char*) ; 
 int FUNC4 (struct mlx5e_priv*,struct mlx5e_channels*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct mlx5e_priv *priv, bool new_val)
{
	bool curr_val = FUNC0(&priv->channels.params, MLX5E_PFLAG_RX_CQE_COMPRESS);
	struct mlx5e_channels new_channels = {};
	int err = 0;

	if (!FUNC2(priv->mdev, cqe_compression))
		return new_val ? -EOPNOTSUPP : 0;

	if (curr_val == new_val)
		return 0;

	new_channels.params = priv->channels.params;
	FUNC1(&new_channels.params, MLX5E_PFLAG_RX_CQE_COMPRESS, new_val);

	if (!FUNC5(MLX5E_STATE_OPENED, &priv->state)) {
		priv->channels.params = new_channels.params;
		return 0;
	}

	err = FUNC4(priv, &new_channels, NULL);
	if (err)
		return err;

	FUNC3(DRV, priv, "MLX5E: RxCqeCmprss was turned %s\n",
		  FUNC0(&priv->channels.params,
				  MLX5E_PFLAG_RX_CQE_COMPRESS) ? "ON" : "OFF");

	return 0;
}