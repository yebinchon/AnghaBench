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
struct TYPE_2__ {int /*<<< orphan*/  qpn; } ;
struct mlx5i_priv {TYPE_1__ qp; } ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; int /*<<< orphan*/ ** tisn; int /*<<< orphan*/  channels; int /*<<< orphan*/  netdev; int /*<<< orphan*/  state; struct mlx5_core_dev* mdev; struct mlx5i_priv* ppriv; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev)
{
	struct mlx5e_priv *priv = FUNC5(netdev);
	struct mlx5i_priv *ipriv = priv->ppriv;
	struct mlx5_core_dev *mdev = priv->mdev;

	FUNC7(&priv->state_lock);

	if (!FUNC10(MLX5E_STATE_OPENED, &priv->state))
		goto unlock;

	FUNC0(MLX5E_STATE_OPENED, &priv->state);

	FUNC9(priv->netdev);
	FUNC1(mdev, ipriv->qp.qpn);
	FUNC6(priv);
	FUNC3(priv);
	FUNC2(&priv->channels);
	FUNC4(mdev, priv->tisn[0][0]);
unlock:
	FUNC8(&priv->state_lock);
	return 0;
}