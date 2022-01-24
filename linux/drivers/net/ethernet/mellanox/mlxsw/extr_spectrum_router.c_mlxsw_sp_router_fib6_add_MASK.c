#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlxsw_sp_fib_node {int dummy; } ;
typedef  struct mlxsw_sp_fib_node mlxsw_sp_fib6_entry ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_8__ {int /*<<< orphan*/  plen; int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {scalar_t__ plen; } ;
struct fib6_info {TYPE_4__ fib6_dst; TYPE_3__* fib6_table; TYPE_2__ fib6_src; } ;
struct TYPE_7__ {int /*<<< orphan*/  tb6_id; } ;
struct TYPE_5__ {scalar_t__ aborted; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct mlxsw_sp_fib_node*) ; 
 int /*<<< orphan*/  MLXSW_SP_L3_PROTO_IPV6 ; 
 int FUNC1 (struct mlxsw_sp_fib_node*) ; 
 struct mlxsw_sp_fib_node* FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,struct fib6_info**,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ; 
 int FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,struct fib6_info**,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,int) ; 
 int FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,int*) ; 
 struct mlxsw_sp_fib_node* FUNC7 (struct mlxsw_sp_fib_node*,struct fib6_info*,int) ; 
 scalar_t__ FUNC8 (struct fib6_info*) ; 
 struct mlxsw_sp_fib_node* FUNC9 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ; 

__attribute__((used)) static int FUNC11(struct mlxsw_sp *mlxsw_sp,
				    struct fib6_info **rt_arr,
				    unsigned int nrt6, bool replace)
{
	struct mlxsw_sp_fib6_entry *fib6_entry;
	struct mlxsw_sp_fib_node *fib_node;
	struct fib6_info *rt = rt_arr[0];
	int err;

	if (mlxsw_sp->router->aborted)
		return 0;

	if (rt->fib6_src.plen)
		return -EINVAL;

	if (FUNC8(rt))
		return 0;

	fib_node = FUNC9(mlxsw_sp, rt->fib6_table->tb6_id,
					 &rt->fib6_dst.addr,
					 sizeof(rt->fib6_dst.addr),
					 rt->fib6_dst.plen,
					 MLXSW_SP_L3_PROTO_IPV6);
	if (FUNC0(fib_node))
		return FUNC1(fib_node);

	/* Before creating a new entry, try to append route to an existing
	 * multipath entry.
	 */
	fib6_entry = FUNC7(fib_node, rt, replace);
	if (fib6_entry) {
		err = FUNC4(mlxsw_sp, fib6_entry,
						      rt_arr, nrt6);
		if (err)
			goto err_fib6_entry_nexthop_add;
		return 0;
	}

	fib6_entry = FUNC2(mlxsw_sp, fib_node, rt_arr,
						nrt6);
	if (FUNC0(fib6_entry)) {
		err = FUNC1(fib6_entry);
		goto err_fib6_entry_create;
	}

	err = FUNC6(mlxsw_sp, fib6_entry, &replace);
	if (err)
		goto err_fib6_node_entry_link;

	FUNC5(mlxsw_sp, fib6_entry, replace);

	return 0;

err_fib6_node_entry_link:
	FUNC3(mlxsw_sp, fib6_entry);
err_fib6_entry_create:
err_fib6_entry_nexthop_add:
	FUNC10(mlxsw_sp, fib_node);
	return err;
}