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
struct mlx5e_priv {TYPE_1__* mdev; int /*<<< orphan*/  state_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  vxlan; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_PORT_UP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

int FUNC7(struct net_device *netdev)
{
	struct mlx5e_priv *priv = FUNC5(netdev);
	int err;

	FUNC3(&priv->state_lock);
	err = FUNC2(netdev);
	if (!err)
		FUNC0(priv->mdev, MLX5_PORT_UP);
	FUNC4(&priv->state_lock);

	if (FUNC1(priv->mdev->vxlan))
		FUNC6(netdev);

	return err;
}