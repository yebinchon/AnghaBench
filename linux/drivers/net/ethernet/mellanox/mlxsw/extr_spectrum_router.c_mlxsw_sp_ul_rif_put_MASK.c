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
struct mlxsw_sp_vr {int /*<<< orphan*/  rif_count; int /*<<< orphan*/  ul_rif_refcnt; } ;
struct mlxsw_sp_rif {size_t vr_id; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {struct mlxsw_sp_vr* vrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_vr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_sp_rif *ul_rif)
{
	struct mlxsw_sp *mlxsw_sp = ul_rif->mlxsw_sp;
	struct mlxsw_sp_vr *vr;

	vr = &mlxsw_sp->router->vrs[ul_rif->vr_id];

	if (!FUNC2(&vr->ul_rif_refcnt))
		return;

	vr->rif_count--;
	FUNC0(ul_rif);
	FUNC1(mlxsw_sp, vr);
}