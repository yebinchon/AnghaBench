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
struct mlxsw_afa_ops {int dummy; } ;
struct mlxsw_afa {unsigned int max_acts_per_set; int /*<<< orphan*/  set_ht; void* ops_priv; struct mlxsw_afa_ops const* ops; int /*<<< orphan*/  fwd_entry_ht; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_afa* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_afa*) ; 
 struct mlxsw_afa* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlxsw_afa_fwd_entry_ht_params ; 
 int /*<<< orphan*/  mlxsw_afa_set_ht_params ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct mlxsw_afa *FUNC5(unsigned int max_acts_per_set,
				   const struct mlxsw_afa_ops *ops,
				   void *ops_priv)
{
	struct mlxsw_afa *mlxsw_afa;
	int err;

	mlxsw_afa = FUNC2(sizeof(*mlxsw_afa), GFP_KERNEL);
	if (!mlxsw_afa)
		return FUNC0(-ENOMEM);
	err = FUNC4(&mlxsw_afa->set_ht, &mlxsw_afa_set_ht_params);
	if (err)
		goto err_set_rhashtable_init;
	err = FUNC4(&mlxsw_afa->fwd_entry_ht,
			      &mlxsw_afa_fwd_entry_ht_params);
	if (err)
		goto err_fwd_entry_rhashtable_init;
	mlxsw_afa->max_acts_per_set = max_acts_per_set;
	mlxsw_afa->ops = ops;
	mlxsw_afa->ops_priv = ops_priv;
	return mlxsw_afa;

err_fwd_entry_rhashtable_init:
	FUNC3(&mlxsw_afa->set_ht);
err_set_rhashtable_init:
	FUNC1(mlxsw_afa);
	return FUNC0(err);
}