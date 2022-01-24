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
typedef  scalar_t__ u8 ;
struct net_device {int mtu; } ;
struct TYPE_3__ {int refcnt; } ;
struct mlx5e_params {int sw_mtu; scalar_t__ rq_wq_type; scalar_t__ xdp_prog; int /*<<< orphan*/  lro_en; } ;
struct TYPE_4__ {struct mlx5e_params params; } ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; TYPE_1__ xsk; int /*<<< orphan*/  mdev; TYPE_2__ channels; int /*<<< orphan*/  state; } ;
struct mlx5e_channels {struct mlx5e_params params; } ;
typedef  int /*<<< orphan*/  (* change_hw_mtu_cb ) (struct mlx5e_priv*) ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 scalar_t__ MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ ; 
 scalar_t__ FUNC0 (struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mlx5e_priv*,struct mlx5e_channels*,int /*<<< orphan*/  (*) (struct mlx5e_priv*)) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,TYPE_2__*,struct mlx5e_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*,int,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(struct net_device *netdev, int new_mtu,
		     change_hw_mtu_cb set_mtu_cb)
{
	struct mlx5e_priv *priv = FUNC9(netdev);
	struct mlx5e_channels new_channels = {};
	struct mlx5e_params *params;
	int err = 0;
	bool reset;

	FUNC6(&priv->state_lock);

	params = &priv->channels.params;

	reset = !params->lro_en;
	reset = reset && FUNC10(MLX5E_STATE_OPENED, &priv->state);

	new_channels.params = *params;
	new_channels.params.sw_mtu = new_mtu;

	if (params->xdp_prog &&
	    !FUNC1(&new_channels.params, NULL)) {
		FUNC8(netdev, "MTU(%d) > %d is not allowed while XDP enabled\n",
			   new_mtu, FUNC4(params, NULL));
		err = -EINVAL;
		goto out;
	}

	if (priv->xsk.refcnt &&
	    !FUNC5(netdev, &priv->channels,
				    &new_channels.params, priv->mdev)) {
		err = -EINVAL;
		goto out;
	}

	if (params->rq_wq_type == MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ) {
		bool is_linear = FUNC2(priv->mdev,
							      &new_channels.params,
							      NULL);
		u8 ppw_old = FUNC0(params, NULL);
		u8 ppw_new = FUNC0(&new_channels.params, NULL);

		/* If XSK is active, XSK RQs are linear. */
		is_linear |= priv->xsk.refcnt;

		/* Always reset in linear mode - hw_mtu is used in data path. */
		reset = reset && (is_linear || (ppw_old != ppw_new));
	}

	if (!reset) {
		params->sw_mtu = new_mtu;
		if (set_mtu_cb)
			set_mtu_cb(priv);
		netdev->mtu = params->sw_mtu;
		goto out;
	}

	err = FUNC3(priv, &new_channels, set_mtu_cb);
	if (err)
		goto out;

	netdev->mtu = new_channels.params.sw_mtu;

out:
	FUNC7(&priv->state_lock);
	return err;
}