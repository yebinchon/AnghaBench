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
struct mlx5e_priv {struct net_device* netdev; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  merged_eswitch ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 struct mlx5e_priv* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct mlx5e_priv*,struct mlx5e_priv*) ; 

__attribute__((used)) static bool FUNC4(struct mlx5e_priv *priv,
				  struct net_device *peer_netdev)
{
	struct mlx5e_priv *peer_priv;

	peer_priv = FUNC2(peer_netdev);

	return (FUNC0(priv->mdev, merged_eswitch) &&
		FUNC1(priv->netdev) &&
		FUNC1(peer_netdev) &&
		FUNC3(priv, peer_priv));
}