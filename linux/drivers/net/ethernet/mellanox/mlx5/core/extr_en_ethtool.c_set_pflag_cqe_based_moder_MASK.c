#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct TYPE_7__ {scalar_t__ cq_period_mode; } ;
struct TYPE_6__ {scalar_t__ cq_period_mode; } ;
struct TYPE_9__ {TYPE_2__ tx_cq_moderation; TYPE_1__ rx_cq_moderation; } ;
struct TYPE_8__ {TYPE_4__ params; } ;
struct mlx5e_priv {TYPE_3__ channels; int /*<<< orphan*/  state; struct mlx5_core_dev* mdev; } ;
struct mlx5e_channels {TYPE_4__ params; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_CQ_PERIOD_MODE_START_FROM_CQE ; 
 scalar_t__ MLX5_CQ_PERIOD_MODE_START_FROM_EQE ; 
 int /*<<< orphan*/  cq_period_start_from_cqe ; 
 int FUNC1 (struct mlx5e_priv*,struct mlx5e_channels*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__) ; 
 struct mlx5e_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, bool enable,
				     bool is_rx_cq)
{
	struct mlx5e_priv *priv = FUNC4(netdev);
	struct mlx5_core_dev *mdev = priv->mdev;
	struct mlx5e_channels new_channels = {};
	bool mode_changed;
	u8 cq_period_mode, current_cq_period_mode;

	cq_period_mode = enable ?
		MLX5_CQ_PERIOD_MODE_START_FROM_CQE :
		MLX5_CQ_PERIOD_MODE_START_FROM_EQE;
	current_cq_period_mode = is_rx_cq ?
		priv->channels.params.rx_cq_moderation.cq_period_mode :
		priv->channels.params.tx_cq_moderation.cq_period_mode;
	mode_changed = cq_period_mode != current_cq_period_mode;

	if (cq_period_mode == MLX5_CQ_PERIOD_MODE_START_FROM_CQE &&
	    !FUNC0(mdev, cq_period_start_from_cqe))
		return -EOPNOTSUPP;

	if (!mode_changed)
		return 0;

	new_channels.params = priv->channels.params;
	if (is_rx_cq)
		FUNC2(&new_channels.params, cq_period_mode);
	else
		FUNC3(&new_channels.params, cq_period_mode);

	if (!FUNC5(MLX5E_STATE_OPENED, &priv->state)) {
		priv->channels.params = new_channels.params;
		return 0;
	}

	return FUNC1(priv, &new_channels, NULL);
}