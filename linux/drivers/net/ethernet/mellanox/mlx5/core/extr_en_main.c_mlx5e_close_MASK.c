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
struct mlx5e_priv {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MLX5_PORT_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

int FUNC6(struct net_device *netdev)
{
	struct mlx5e_priv *priv = FUNC4(netdev);
	int err;

	if (!FUNC5(netdev))
		return -ENODEV;

	FUNC2(&priv->state_lock);
	FUNC0(priv->mdev, MLX5_PORT_DOWN);
	err = FUNC1(netdev);
	FUNC3(&priv->state_lock);

	return err;
}