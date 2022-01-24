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
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {char* board_id; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  UTS_RELEASE ; 
 int FUNC0 (struct mlx5_core_dev*) ; 
 int FUNC1 (struct mlx5_core_dev*) ; 
 int FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  mlx5e_rep_driver_name ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
				  struct ethtool_drvinfo *drvinfo)
{
	struct mlx5e_priv *priv = FUNC3(dev);
	struct mlx5_core_dev *mdev = priv->mdev;

	FUNC5(drvinfo->driver, mlx5e_rep_driver_name,
		sizeof(drvinfo->driver));
	FUNC5(drvinfo->version, UTS_RELEASE, sizeof(drvinfo->version));
	FUNC4(drvinfo->fw_version, sizeof(drvinfo->fw_version),
		 "%d.%d.%04d (%.16s)",
		 FUNC0(mdev), FUNC1(mdev),
		 FUNC2(mdev), mdev->board_id);
}