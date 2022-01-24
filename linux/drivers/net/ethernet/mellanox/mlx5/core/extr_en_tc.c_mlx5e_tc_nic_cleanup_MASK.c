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
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {scalar_t__ notifier_call; } ;
struct mlx5e_tc_table {int /*<<< orphan*/  t_lock; int /*<<< orphan*/ * t; int /*<<< orphan*/  ht; int /*<<< orphan*/  hairpin_tbl_lock; TYPE_1__ mod_hdr; TYPE_3__ netdevice_nb; } ;
struct TYPE_5__ {struct mlx5e_tc_table tc; } ;
struct mlx5e_priv {TYPE_2__ fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

void FUNC5(struct mlx5e_priv *priv)
{
	struct mlx5e_tc_table *tc = &priv->fs.tc;

	if (tc->netdevice_nb.notifier_call)
		FUNC4(&tc->netdevice_nb);

	FUNC2(&tc->mod_hdr.lock);
	FUNC2(&tc->hairpin_tbl_lock);

	FUNC3(&tc->ht);

	if (!FUNC0(tc->t)) {
		FUNC1(tc->t);
		tc->t = NULL;
	}
	FUNC2(&tc->t_lock);
}