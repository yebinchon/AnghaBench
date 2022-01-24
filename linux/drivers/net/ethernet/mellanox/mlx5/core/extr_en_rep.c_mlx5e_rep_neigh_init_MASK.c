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
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct mlx5e_neigh_update_table {int /*<<< orphan*/  neigh_ht; TYPE_1__ netevent_nb; int /*<<< orphan*/  neigh_stats_work; int /*<<< orphan*/  encap_lock; int /*<<< orphan*/  neigh_list; } ;
struct mlx5e_rep_priv {struct mlx5e_neigh_update_table neigh_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlx5e_neigh_ht_params ; 
 int /*<<< orphan*/  mlx5e_rep_neigh_stats_work ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_rep_priv*) ; 
 int /*<<< orphan*/  mlx5e_rep_netevent_event ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mlx5e_rep_priv *rpriv)
{
	struct mlx5e_neigh_update_table *neigh_update = &rpriv->neigh_update;
	int err;

	err = FUNC6(&neigh_update->neigh_ht, &mlx5e_neigh_ht_params);
	if (err)
		return err;

	FUNC1(&neigh_update->neigh_list);
	FUNC3(&neigh_update->encap_lock);
	FUNC0(&neigh_update->neigh_stats_work,
			  mlx5e_rep_neigh_stats_work);
	FUNC2(rpriv);

	rpriv->neigh_update.netevent_nb.notifier_call = mlx5e_rep_netevent_event;
	err = FUNC4(&rpriv->neigh_update.netevent_nb);
	if (err)
		goto out_err;
	return 0;

out_err:
	FUNC5(&neigh_update->neigh_ht);
	return err;
}