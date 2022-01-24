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
typedef  int /*<<< orphan*/  u32 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_vr {int /*<<< orphan*/  tb_id; struct mlxsw_sp_mr_table** mr_table; struct mlxsw_sp_mr_table* fib6; struct mlxsw_sp_mr_table* fib4; int /*<<< orphan*/  id; } ;
struct mlxsw_sp_mr_table {int dummy; } ;
typedef  struct mlxsw_sp_mr_table mlxsw_sp_fib ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 struct mlxsw_sp_vr* FUNC0 (struct mlxsw_sp_mr_table*) ; 
 struct mlxsw_sp_vr* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct mlxsw_sp_mr_table*) ; 
 size_t MLXSW_SP_L3_PROTO_IPV4 ; 
 size_t MLXSW_SP_L3_PROTO_IPV6 ; 
 int /*<<< orphan*/  FUNC3 (struct netlink_ext_ack*,char*) ; 
 int FUNC4 (struct mlxsw_sp_mr_table*) ; 
 struct mlxsw_sp_mr_table* FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_vr*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_mr_table*) ; 
 struct mlxsw_sp_mr_table* FUNC7 (struct mlxsw_sp*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp_mr_table*) ; 
 struct mlxsw_sp_vr* FUNC9 (struct mlxsw_sp*) ; 

__attribute__((used)) static struct mlxsw_sp_vr *FUNC10(struct mlxsw_sp *mlxsw_sp,
					      u32 tb_id,
					      struct netlink_ext_ack *extack)
{
	struct mlxsw_sp_mr_table *mr4_table, *mr6_table;
	struct mlxsw_sp_fib *fib4;
	struct mlxsw_sp_fib *fib6;
	struct mlxsw_sp_vr *vr;
	int err;

	vr = FUNC9(mlxsw_sp);
	if (!vr) {
		FUNC3(extack, "Exceeded number of supported virtual routers");
		return FUNC1(-EBUSY);
	}
	fib4 = FUNC5(mlxsw_sp, vr, MLXSW_SP_L3_PROTO_IPV4);
	if (FUNC2(fib4))
		return FUNC0(fib4);
	fib6 = FUNC5(mlxsw_sp, vr, MLXSW_SP_L3_PROTO_IPV6);
	if (FUNC2(fib6)) {
		err = FUNC4(fib6);
		goto err_fib6_create;
	}
	mr4_table = FUNC7(mlxsw_sp, vr->id,
					     MLXSW_SP_L3_PROTO_IPV4);
	if (FUNC2(mr4_table)) {
		err = FUNC4(mr4_table);
		goto err_mr4_table_create;
	}
	mr6_table = FUNC7(mlxsw_sp, vr->id,
					     MLXSW_SP_L3_PROTO_IPV6);
	if (FUNC2(mr6_table)) {
		err = FUNC4(mr6_table);
		goto err_mr6_table_create;
	}

	vr->fib4 = fib4;
	vr->fib6 = fib6;
	vr->mr_table[MLXSW_SP_L3_PROTO_IPV4] = mr4_table;
	vr->mr_table[MLXSW_SP_L3_PROTO_IPV6] = mr6_table;
	vr->tb_id = tb_id;
	return vr;

err_mr6_table_create:
	FUNC8(mr4_table);
err_mr4_table_create:
	FUNC6(mlxsw_sp, fib6);
err_fib6_create:
	FUNC6(mlxsw_sp, fib4);
	return FUNC1(err);
}