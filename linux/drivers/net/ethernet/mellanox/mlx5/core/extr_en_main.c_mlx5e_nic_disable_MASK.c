#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx5e_priv {int /*<<< orphan*/  set_rx_mode_work; int /*<<< orphan*/  wq; TYPE_1__* netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ reg_state; } ;

/* Variables and functions */
 scalar_t__ NETREG_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*) ; 
 scalar_t__ FUNC6 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(struct mlx5e_priv *priv)
{
	struct mlx5_core_dev *mdev = priv->mdev;

#ifdef CONFIG_MLX5_CORE_EN_DCB
	if (priv->netdev->reg_state == NETREG_REGISTERED)
		mlx5e_dcbnl_delete_app(priv);
#endif

	FUNC10();
	if (FUNC8(priv->netdev))
		FUNC1(priv->netdev);
	FUNC7(priv->netdev);
	FUNC11();

	FUNC9(priv->wq, &priv->set_rx_mode_work);

	FUNC4(priv);
	if (FUNC6(priv))
		FUNC5(priv);

	FUNC3(priv);
	FUNC0(mdev);
}