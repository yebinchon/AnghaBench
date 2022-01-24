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
struct TYPE_4__ {int /*<<< orphan*/  is_first; int /*<<< orphan*/  enc_actions; } ;
struct mlxsw_afa_set {int shared; int /*<<< orphan*/  ht_node; int /*<<< orphan*/ * prev; TYPE_2__ ht_key; int /*<<< orphan*/  kvdl_index; } ;
struct mlxsw_afa {int /*<<< orphan*/  set_ht; int /*<<< orphan*/  ops_priv; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* kvdl_set_add ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  mlxsw_afa_set_ht_params ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mlxsw_afa *mlxsw_afa,
			       struct mlxsw_afa_set *set)
{
	int err;

	err = FUNC0(&mlxsw_afa->set_ht, &set->ht_node,
				     mlxsw_afa_set_ht_params);
	if (err)
		return err;
	err = mlxsw_afa->ops->kvdl_set_add(mlxsw_afa->ops_priv,
					   &set->kvdl_index,
					   set->ht_key.enc_actions,
					   set->ht_key.is_first);
	if (err)
		goto err_kvdl_set_add;
	set->shared = true;
	set->prev = NULL;
	return 0;

err_kvdl_set_add:
	FUNC1(&mlxsw_afa->set_ht, &set->ht_node,
			       mlxsw_afa_set_ht_params);
	return err;
}