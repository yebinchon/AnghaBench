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
struct net_device {int /*<<< orphan*/  dev; } ;
struct mlx5e_priv {struct net_device* netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct firmware {int dummy; } ;
struct ethtool_flash {scalar_t__ region; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ ETHTOOL_FLASH_ALL_REGIONS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (struct mlx5_core_dev*,struct firmware const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 
 int FUNC4 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct mlx5e_priv *priv,
			       struct ethtool_flash *flash)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	struct net_device *dev = priv->netdev;
	const struct firmware *fw;
	int err;

	if (flash->region != ETHTOOL_FLASH_ALL_REGIONS)
		return -EOPNOTSUPP;

	err = FUNC4(&fw, flash->data, &dev->dev);
	if (err)
		return err;

	FUNC0(dev);
	FUNC6();

	err = FUNC2(mdev, fw, NULL);
	FUNC3(fw);

	FUNC5();
	FUNC1(dev);
	return err;
}