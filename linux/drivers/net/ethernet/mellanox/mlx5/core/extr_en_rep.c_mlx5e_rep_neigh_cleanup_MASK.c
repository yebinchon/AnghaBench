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
struct mlx5e_neigh_update_table {int /*<<< orphan*/  neigh_ht; int /*<<< orphan*/  encap_lock; int /*<<< orphan*/  neigh_stats_work; int /*<<< orphan*/  netevent_nb; } ;
struct mlx5e_rep_priv {struct mlx5e_neigh_update_table neigh_update; int /*<<< orphan*/  netdev; } ;
struct mlx5e_priv {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mlx5e_rep_priv *rpriv)
{
	struct mlx5e_neigh_update_table *neigh_update = &rpriv->neigh_update;
	struct mlx5e_priv *priv = FUNC3(rpriv->netdev);

	FUNC5(&neigh_update->netevent_nb);

	FUNC1(priv->wq); /* flush neigh update works */

	FUNC0(&rpriv->neigh_update.neigh_stats_work);

	FUNC2(&neigh_update->encap_lock);
	FUNC4(&neigh_update->neigh_ht);
}