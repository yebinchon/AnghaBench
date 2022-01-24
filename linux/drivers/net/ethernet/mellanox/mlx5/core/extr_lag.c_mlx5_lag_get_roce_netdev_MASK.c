#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ tx_type; TYPE_1__* netdev_state; } ;
struct mlx5_lag {TYPE_3__* pf; TYPE_2__ tracker; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_6__ {struct net_device* netdev; } ;
struct TYPE_4__ {scalar_t__ tx_enabled; } ;

/* Variables and functions */
 scalar_t__ NETDEV_LAG_TX_TYPE_ACTIVEBACKUP ; 
 scalar_t__ FUNC0 (struct mlx5_lag*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  lag_mutex ; 
 struct mlx5_lag* FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct net_device *FUNC5(struct mlx5_core_dev *dev)
{
	struct net_device *ndev = NULL;
	struct mlx5_lag *ldev;

	FUNC3(&lag_mutex);
	ldev = FUNC2(dev);

	if (!(ldev && FUNC0(ldev)))
		goto unlock;

	if (ldev->tracker.tx_type == NETDEV_LAG_TX_TYPE_ACTIVEBACKUP) {
		ndev = ldev->tracker.netdev_state[0].tx_enabled ?
		       ldev->pf[0].netdev : ldev->pf[1].netdev;
	} else {
		ndev = ldev->pf[0].netdev;
	}
	if (ndev)
		FUNC1(ndev);

unlock:
	FUNC4(&lag_mutex);

	return ndev;
}