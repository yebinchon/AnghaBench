#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * notifier_call; } ;
struct mlx5_lag {TYPE_2__ nb; } ;
struct TYPE_3__ {struct mlx5_lag* lag; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_MAX_PORTS ; 
 int /*<<< orphan*/  lag_master ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,...) ; 
 struct mlx5_core_dev* FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_lag*,struct mlx5_core_dev*,struct net_device*) ; 
 struct mlx5_lag* FUNC4 () ; 
 int FUNC5 (struct mlx5_lag*) ; 
 int /*<<< orphan*/ * mlx5_lag_netdev_event ; 
 int /*<<< orphan*/  num_lag_ports ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  vport_group_manager ; 

void FUNC7(struct mlx5_core_dev *dev, struct net_device *netdev)
{
	struct mlx5_lag *ldev = NULL;
	struct mlx5_core_dev *tmp_dev;
	int err;

	if (!FUNC0(dev, vport_group_manager) ||
	    !FUNC0(dev, lag_master) ||
	    (FUNC0(dev, num_lag_ports) != MLX5_MAX_PORTS))
		return;

	tmp_dev = FUNC2(dev);
	if (tmp_dev)
		ldev = tmp_dev->priv.lag;

	if (!ldev) {
		ldev = FUNC4();
		if (!ldev) {
			FUNC1(dev, "Failed to alloc lag dev\n");
			return;
		}
	}

	FUNC3(ldev, dev, netdev);

	if (!ldev->nb.notifier_call) {
		ldev->nb.notifier_call = mlx5_lag_netdev_event;
		if (FUNC6(&ldev->nb)) {
			ldev->nb.notifier_call = NULL;
			FUNC1(dev, "Failed to register LAG netdev notifier\n");
		}
	}

	err = FUNC5(ldev);
	if (err)
		FUNC1(dev, "Failed to init multipath lag err=%d\n",
			      err);
}