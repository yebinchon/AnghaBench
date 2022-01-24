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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ethtool_wolinfo {int /*<<< orphan*/  wolopts; int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ethtool_wolinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
			  struct ethtool_wolinfo *wol)
{
	struct mlx5e_priv *priv = FUNC4(netdev);
	struct mlx5_core_dev *mdev = priv->mdev;
	u8 mlx5_wol_mode;
	int err;

	FUNC0(wol, 0, sizeof(*wol));

	wol->supported = FUNC2(mdev);
	if (!wol->supported)
		return;

	err = FUNC1(mdev, &mlx5_wol_mode);
	if (err)
		return;

	wol->wolopts = FUNC3(mlx5_wol_mode);
}