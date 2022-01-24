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
struct mlxsw_sp_rif_ipip_lb {int /*<<< orphan*/  ul_rif_id; scalar_t__ ul_vr_id; } ;
struct mlxsw_sp_rif {int /*<<< orphan*/  rif_index; struct mlxsw_sp* mlxsw_sp; int /*<<< orphan*/  dev; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_rif*) ; 
 int FUNC1 (struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxsw_sp_rif_ipip_lb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mlxsw_sp_rif_ipip_lb* FUNC4 (struct mlxsw_sp_rif*) ; 
 struct mlxsw_sp_rif* FUNC5 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp_rif*) ; 

__attribute__((used)) static int
FUNC7(struct mlxsw_sp_rif *rif)
{
	struct mlxsw_sp_rif_ipip_lb *lb_rif = FUNC4(rif);
	u32 ul_tb_id = FUNC2(rif->dev);
	struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
	struct mlxsw_sp_rif *ul_rif;
	int err;

	ul_rif = FUNC5(mlxsw_sp, ul_tb_id, NULL);
	if (FUNC0(ul_rif))
		return FUNC1(ul_rif);

	err = FUNC3(lb_rif, 0, ul_rif->rif_index, true);
	if (err)
		goto err_loopback_op;

	lb_rif->ul_vr_id = 0;
	lb_rif->ul_rif_id = ul_rif->rif_index;

	return 0;

err_loopback_op:
	FUNC6(ul_rif);
	return err;
}