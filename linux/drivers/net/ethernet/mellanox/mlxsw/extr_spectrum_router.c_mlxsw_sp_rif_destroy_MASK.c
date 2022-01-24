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
struct mlxsw_sp_vr {int /*<<< orphan*/  rif_count; int /*<<< orphan*/ * mr_table; } ;
struct mlxsw_sp_rif_ops {int /*<<< orphan*/  (* deconfigure ) (struct mlxsw_sp_rif*) ;} ;
struct mlxsw_sp_rif {size_t vr_id; size_t rif_index; int /*<<< orphan*/  dev; struct mlxsw_sp_fid* fid; struct mlxsw_sp* mlxsw_sp; struct mlxsw_sp_rif_ops* ops; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** rifs; struct mlxsw_sp_vr* vrs; } ;

/* Variables and functions */
 int MLXSW_SP_L3_PROTO_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_vr*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_rif*) ; 

__attribute__((used)) static void FUNC8(struct mlxsw_sp_rif *rif)
{
	const struct mlxsw_sp_rif_ops *ops = rif->ops;
	struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
	struct mlxsw_sp_fid *fid = rif->fid;
	struct mlxsw_sp_vr *vr;
	int i;

	FUNC5(mlxsw_sp, rif);
	vr = &mlxsw_sp->router->vrs[rif->vr_id];

	FUNC4(rif);
	for (i = 0; i < MLXSW_SP_L3_PROTO_MAX; i++)
		FUNC3(vr->mr_table[i], rif);
	ops->deconfigure(rif);
	if (fid)
		/* Loopback RIFs are not associated with a FID. */
		FUNC2(fid);
	mlxsw_sp->router->rifs[rif->rif_index] = NULL;
	FUNC0(rif->dev);
	FUNC1(rif);
	vr->rif_count--;
	FUNC6(mlxsw_sp, vr);
}