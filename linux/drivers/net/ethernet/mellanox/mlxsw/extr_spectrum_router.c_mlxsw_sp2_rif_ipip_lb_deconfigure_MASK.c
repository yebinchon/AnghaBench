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
struct mlxsw_sp_rif_ipip_lb {int /*<<< orphan*/  ul_rif_id; } ;
struct mlxsw_sp_rif {struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 struct mlxsw_sp_rif* FUNC0 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_rif_ipip_lb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mlxsw_sp_rif_ipip_lb* FUNC2 (struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_rif*) ; 

__attribute__((used)) static void FUNC4(struct mlxsw_sp_rif *rif)
{
	struct mlxsw_sp_rif_ipip_lb *lb_rif = FUNC2(rif);
	struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
	struct mlxsw_sp_rif *ul_rif;

	ul_rif = FUNC0(mlxsw_sp, lb_rif->ul_rif_id);
	FUNC1(lb_rif, 0, lb_rif->ul_rif_id, false);
	FUNC3(ul_rif);
}