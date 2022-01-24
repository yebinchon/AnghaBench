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
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {char* board_id; int /*<<< orphan*/  device; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  DRIVER_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*) ; 
 int FUNC2 (struct mlx5_core_dev*) ; 
 int FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct mlx5e_priv *priv,
			       struct ethtool_drvinfo *drvinfo)
{
	struct mlx5_core_dev *mdev = priv->mdev;

	FUNC5(drvinfo->driver, DRIVER_NAME, sizeof(drvinfo->driver));
	FUNC5(drvinfo->version, DRIVER_VERSION,
		sizeof(drvinfo->version));
	FUNC4(drvinfo->fw_version, sizeof(drvinfo->fw_version),
		 "%d.%d.%04d (%.16s)",
		 FUNC1(mdev), FUNC2(mdev), FUNC3(mdev),
		 mdev->board_id);
	FUNC5(drvinfo->bus_info, FUNC0(mdev->device),
		sizeof(drvinfo->bus_info));
}