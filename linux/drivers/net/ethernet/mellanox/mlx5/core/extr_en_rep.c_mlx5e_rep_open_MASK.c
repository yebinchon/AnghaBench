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
struct net_device {int dummy; } ;
struct mlx5e_rep_priv {struct mlx5_eswitch_rep* rep; } ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  mdev; struct mlx5e_rep_priv* ppriv; } ;
struct mlx5_eswitch_rep {int /*<<< orphan*/  vport; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_VPORT_ADMIN_STATE_UP ; 
 int /*<<< orphan*/  MLX5_VPORT_STATE_OP_MOD_ESW_VPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct mlx5e_priv *priv = FUNC4(dev);
	struct mlx5e_rep_priv *rpriv = priv->ppriv;
	struct mlx5_eswitch_rep *rep = rpriv->rep;
	int err;

	FUNC2(&priv->state_lock);
	err = FUNC1(dev);
	if (err)
		goto unlock;

	if (!FUNC0(priv->mdev,
					   MLX5_VPORT_STATE_OP_MOD_ESW_VPORT,
					   rep->vport, 1,
					   MLX5_VPORT_ADMIN_STATE_UP))
		FUNC5(dev);

unlock:
	FUNC3(&priv->state_lock);
	return err;
}