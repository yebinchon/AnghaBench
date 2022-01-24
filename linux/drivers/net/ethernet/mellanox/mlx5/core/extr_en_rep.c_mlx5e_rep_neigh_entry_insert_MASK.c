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
struct TYPE_2__ {int /*<<< orphan*/  neigh_list; int /*<<< orphan*/  neigh_ht; } ;
struct mlx5e_rep_priv {TYPE_1__ neigh_update; } ;
struct mlx5e_priv {struct mlx5e_rep_priv* ppriv; } ;
struct mlx5e_neigh_hash_entry {int /*<<< orphan*/  neigh_list; int /*<<< orphan*/  rhash_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlx5e_neigh_ht_params ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mlx5e_priv *priv,
					struct mlx5e_neigh_hash_entry *nhe)
{
	struct mlx5e_rep_priv *rpriv = priv->ppriv;
	int err;

	err = FUNC1(&rpriv->neigh_update.neigh_ht,
				     &nhe->rhash_node,
				     mlx5e_neigh_ht_params);
	if (err)
		return err;

	FUNC0(&nhe->neigh_list, &rpriv->neigh_update.neigh_list);

	return err;
}