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
struct mlx5e_priv {int /*<<< orphan*/  netdev; } ;
typedef  void mlx5_core_dev ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mlx5_core_dev *mdev, void *vpriv)
{
	struct mlx5e_priv *priv;

#ifdef CONFIG_MLX5_ESWITCH
	if (MLX5_ESWITCH_MANAGER(mdev) && vpriv == mdev) {
		mlx5e_rep_unregister_vport_reps(mdev);
		return;
	}
#endif
	priv = vpriv;
#ifdef CONFIG_MLX5_CORE_EN_DCB
	mlx5e_dcbnl_delete_app(priv);
#endif
	FUNC5(priv->netdev);
	FUNC3(mdev, vpriv);
	FUNC2(priv);
}