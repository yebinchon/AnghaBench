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
struct mlxsw_sp_vr {int /*<<< orphan*/  rif_count; int /*<<< orphan*/  id; } ;
struct mlxsw_sp_rif_ipip_lb {scalar_t__ ul_rif_id; int /*<<< orphan*/  ul_vr_id; } ;
struct mlxsw_sp_rif {struct mlxsw_sp* mlxsw_sp; int /*<<< orphan*/  dev; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_vr*) ; 
 int FUNC1 (struct mlxsw_sp_vr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxsw_sp_rif_ipip_lb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mlxsw_sp_rif_ipip_lb* FUNC4 (struct mlxsw_sp_rif*) ; 
 struct mlxsw_sp_vr* FUNC5 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp*,struct mlxsw_sp_vr*) ; 

__attribute__((used)) static int
FUNC7(struct mlxsw_sp_rif *rif)
{
	struct mlxsw_sp_rif_ipip_lb *lb_rif = FUNC4(rif);
	u32 ul_tb_id = FUNC2(rif->dev);
	struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
	struct mlxsw_sp_vr *ul_vr;
	int err;

	ul_vr = FUNC5(mlxsw_sp, ul_tb_id, NULL);
	if (FUNC0(ul_vr))
		return FUNC1(ul_vr);

	err = FUNC3(lb_rif, ul_vr->id, 0, true);
	if (err)
		goto err_loopback_op;

	lb_rif->ul_vr_id = ul_vr->id;
	lb_rif->ul_rif_id = 0;
	++ul_vr->rif_count;
	return 0;

err_loopback_op:
	FUNC6(mlxsw_sp, ul_vr);
	return err;
}