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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
typedef  int __u32 ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
	struct mlx5e_priv *priv = FUNC3(netdev);
	struct mlx5_core_dev *mdev = priv->mdev;
	__u32 wol_supported = FUNC1(mdev);
	u32 mlx5_wol_mode;

	if (!wol_supported)
		return -EOPNOTSUPP;

	if (wol->wolopts & ~wol_supported)
		return -EINVAL;

	mlx5_wol_mode = FUNC2(wol->wolopts);

	return FUNC0(mdev, mlx5_wol_mode);
}