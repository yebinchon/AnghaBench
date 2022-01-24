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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  vport_group_manager ; 

__attribute__((used)) static void FUNC6(struct net_device *netdev)
{
	struct mlx5e_priv *priv = FUNC5(netdev);

	FUNC4(priv->mdev, netdev->dev_addr);
	if (FUNC2(netdev->dev_addr) &&
	    !FUNC0(priv->mdev, vport_group_manager)) {
		FUNC1(netdev);
		FUNC3(priv->mdev, "Assigned random MAC address %pM\n", netdev->dev_addr);
	}
}