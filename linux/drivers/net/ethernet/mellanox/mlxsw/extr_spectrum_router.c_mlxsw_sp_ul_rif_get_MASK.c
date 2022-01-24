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
struct mlxsw_sp_vr {struct mlxsw_sp_vr* ul_rif; int /*<<< orphan*/  ul_rif_refcnt; int /*<<< orphan*/  rif_count; } ;
struct mlxsw_sp_rif {struct mlxsw_sp_rif* ul_rif; int /*<<< orphan*/  ul_rif_refcnt; int /*<<< orphan*/  rif_count; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 struct mlxsw_sp_vr* FUNC0 (struct mlxsw_sp_vr*) ; 
 struct mlxsw_sp_vr* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct mlxsw_sp_vr*) ; 
 int FUNC3 (struct mlxsw_sp_vr*) ; 
 struct mlxsw_sp_vr* FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_vr*,struct netlink_ext_ack*) ; 
 struct mlxsw_sp_vr* FUNC5 (struct mlxsw_sp*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_vr*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct mlxsw_sp_rif *
FUNC9(struct mlxsw_sp *mlxsw_sp, u32 tb_id,
		    struct netlink_ext_ack *extack)
{
	struct mlxsw_sp_vr *vr;
	int err;

	vr = FUNC5(mlxsw_sp, tb_id, extack);
	if (FUNC2(vr))
		return FUNC0(vr);

	if (FUNC7(&vr->ul_rif_refcnt))
		return vr->ul_rif;

	vr->ul_rif = FUNC4(mlxsw_sp, vr, extack);
	if (FUNC2(vr->ul_rif)) {
		err = FUNC3(vr->ul_rif);
		goto err_ul_rif_create;
	}

	vr->rif_count++;
	FUNC8(&vr->ul_rif_refcnt, 1);

	return vr->ul_rif;

err_ul_rif_create:
	FUNC6(mlxsw_sp, vr);
	return FUNC1(err);
}