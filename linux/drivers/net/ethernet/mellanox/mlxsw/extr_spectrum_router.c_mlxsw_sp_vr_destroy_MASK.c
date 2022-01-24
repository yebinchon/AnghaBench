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
struct mlxsw_sp_vr {int /*<<< orphan*/ * fib4; int /*<<< orphan*/ * fib6; int /*<<< orphan*/ ** mr_table; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 size_t MLXSW_SP_L3_PROTO_IPV4 ; 
 size_t MLXSW_SP_L3_PROTO_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mlxsw_sp *mlxsw_sp,
				struct mlxsw_sp_vr *vr)
{
	FUNC1(vr->mr_table[MLXSW_SP_L3_PROTO_IPV6]);
	vr->mr_table[MLXSW_SP_L3_PROTO_IPV6] = NULL;
	FUNC1(vr->mr_table[MLXSW_SP_L3_PROTO_IPV4]);
	vr->mr_table[MLXSW_SP_L3_PROTO_IPV4] = NULL;
	FUNC0(mlxsw_sp, vr->fib6);
	vr->fib6 = NULL;
	FUNC0(mlxsw_sp, vr->fib4);
	vr->fib4 = NULL;
}