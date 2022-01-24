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
struct mlxsw_sp_vr {int /*<<< orphan*/  rif_count; int /*<<< orphan*/  id; } ;
struct mlxsw_sp_rif_ipip_lb {size_t ul_vr_id; } ;
struct mlxsw_sp_rif {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {struct mlxsw_sp_vr* vrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_rif_ipip_lb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mlxsw_sp_rif_ipip_lb* FUNC1 (struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_vr*) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_sp_rif *rif)
{
	struct mlxsw_sp_rif_ipip_lb *lb_rif = FUNC1(rif);
	struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
	struct mlxsw_sp_vr *ul_vr;

	ul_vr = &mlxsw_sp->router->vrs[lb_rif->ul_vr_id];
	FUNC0(lb_rif, ul_vr->id, 0, false);

	--ul_vr->rif_count;
	FUNC2(mlxsw_sp, ul_vr);
}