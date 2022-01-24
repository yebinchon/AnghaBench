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
struct TYPE_6__ {int /*<<< orphan*/ * notifier_call; } ;
struct TYPE_4__ {int /*<<< orphan*/  hlist; int /*<<< orphan*/  lock; } ;
struct mlx5e_tc_table {TYPE_3__ netdevice_nb; int /*<<< orphan*/  ht; int /*<<< orphan*/  hairpin_tbl; int /*<<< orphan*/  hairpin_tbl_lock; TYPE_1__ mod_hdr; int /*<<< orphan*/  t_lock; } ;
struct TYPE_5__ {struct mlx5e_tc_table tc; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; TYPE_2__ fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * mlx5e_tc_netdev_event ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tc_ht_params ; 

int FUNC5(struct mlx5e_priv *priv)
{
	struct mlx5e_tc_table *tc = &priv->fs.tc;
	int err;

	FUNC2(&tc->t_lock);
	FUNC2(&tc->mod_hdr.lock);
	FUNC0(tc->mod_hdr.hlist);
	FUNC2(&tc->hairpin_tbl_lock);
	FUNC0(tc->hairpin_tbl);

	err = FUNC4(&tc->ht, &tc_ht_params);
	if (err)
		return err;

	tc->netdevice_nb.notifier_call = mlx5e_tc_netdev_event;
	if (FUNC3(&tc->netdevice_nb)) {
		tc->netdevice_nb.notifier_call = NULL;
		FUNC1(priv->mdev, "Failed to register netdev notifier\n");
	}

	return err;
}