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
struct mlx5e_priv {TYPE_1__* mdev; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct ethtool_drvinfo*) ; 
 struct mlx5e_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,
					 struct ethtool_drvinfo *drvinfo)
{
	struct mlx5e_priv *priv = FUNC1(dev);

	FUNC0(dev, drvinfo);
	FUNC3(drvinfo->bus_info, FUNC2(priv->mdev->pdev),
		sizeof(drvinfo->bus_info));
}