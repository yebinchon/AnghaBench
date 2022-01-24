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
struct mlx5e_rep_priv {int /*<<< orphan*/  dl_port; struct net_device* netdev; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; void* ppriv; } ;
struct mlx5_eswitch_rep {scalar_t__ vport; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ MLX5_VPORT_UPLINK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,struct mlx5e_rep_priv*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_rep_priv*) ; 
 struct mlx5e_rep_priv* FUNC7 (struct mlx5_eswitch_rep*) ; 
 struct mlx5e_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*,struct mlx5e_rep_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static void
FUNC11(struct mlx5_eswitch_rep *rep)
{
	struct mlx5e_rep_priv *rpriv = FUNC7(rep);
	struct net_device *netdev = rpriv->netdev;
	struct mlx5e_priv *priv = FUNC8(netdev);
	struct mlx5_core_dev *dev = priv->mdev;
	void *ppriv = priv->ppriv;

	if (FUNC1(dev, rpriv))
		FUNC0(&rpriv->dl_port);
	FUNC10(netdev);
	FUNC9(dev, rpriv);
	FUNC6(rpriv);
	FUNC5(priv);
	if (rep->vport == MLX5_VPORT_UPLINK)
		FUNC3(priv->mdev);
	FUNC4(priv);
	FUNC2(ppriv); /* mlx5e_rep_priv */
}