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
struct net_device {int mtu; } ;
struct mlx5e_priv {int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 struct mlx5e_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, int new_mtu)
{
	struct mlx5e_priv *priv = FUNC0(netdev);

	FUNC1(&priv->state_lock);
	netdev->mtu = new_mtu;
	FUNC2(&priv->state_lock);

	return 0;
}