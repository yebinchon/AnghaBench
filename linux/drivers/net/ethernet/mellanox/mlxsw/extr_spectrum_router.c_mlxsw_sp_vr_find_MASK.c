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
typedef  scalar_t__ u32 ;
struct mlxsw_sp_vr {scalar_t__ tb_id; } ;
struct mlxsw_sp {TYPE_1__* router; int /*<<< orphan*/  core; } ;
struct TYPE_2__ {struct mlxsw_sp_vr* vrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_VRS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct mlxsw_sp_vr*) ; 

__attribute__((used)) static struct mlxsw_sp_vr *FUNC3(struct mlxsw_sp *mlxsw_sp,
					    u32 tb_id)
{
	struct mlxsw_sp_vr *vr;
	int i;

	tb_id = FUNC1(tb_id);

	for (i = 0; i < FUNC0(mlxsw_sp->core, MAX_VRS); i++) {
		vr = &mlxsw_sp->router->vrs[i];
		if (FUNC2(vr) && vr->tb_id == tb_id)
			return vr;
	}
	return NULL;
}