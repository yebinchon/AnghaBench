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
struct mlxsw_afa_fwd_entry {int /*<<< orphan*/  ht_node; int /*<<< orphan*/  kvdl_index; } ;
struct mlxsw_afa {int /*<<< orphan*/  fwd_entry_ht; int /*<<< orphan*/  ops_priv; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* kvdl_fwd_entry_del ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_afa_fwd_entry*) ; 
 int /*<<< orphan*/  mlxsw_afa_fwd_entry_ht_params ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_afa *mlxsw_afa,
					struct mlxsw_afa_fwd_entry *fwd_entry)
{
	mlxsw_afa->ops->kvdl_fwd_entry_del(mlxsw_afa->ops_priv,
					   fwd_entry->kvdl_index);
	FUNC1(&mlxsw_afa->fwd_entry_ht, &fwd_entry->ht_node,
			       mlxsw_afa_fwd_entry_ht_params);
	FUNC0(fwd_entry);
}