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
struct mlx5i_priv {int /*<<< orphan*/  sub_interface; } ;
struct mlx5e_profile {int /*<<< orphan*/  (* cleanup ) (struct mlx5e_priv*) ;} ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; struct mlx5e_profile* profile; struct mlx5i_priv* ppriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 struct mlx5e_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev)
{
	struct mlx5e_priv *priv = FUNC2(netdev);
	struct mlx5i_priv *ipriv = priv->ppriv;
	const struct mlx5e_profile *profile = priv->profile;

	FUNC1(priv);
	profile->cleanup(priv);

	if (!ipriv->sub_interface) {
		FUNC3(netdev);
		FUNC0(priv->mdev);
	}
}