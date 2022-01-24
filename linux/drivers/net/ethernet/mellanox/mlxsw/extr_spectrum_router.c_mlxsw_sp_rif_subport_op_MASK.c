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
struct mlxsw_sp_rif_subport {int /*<<< orphan*/  vid; int /*<<< orphan*/  system_port; int /*<<< orphan*/  lag_id; scalar_t__ lag; } ;
struct mlxsw_sp_rif {TYPE_1__* dev; int /*<<< orphan*/  vr_id; int /*<<< orphan*/  rif_index; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RITR_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_RITR_SP_IF ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct mlxsw_sp_rif_subport* FUNC5 (struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  ritr ; 

__attribute__((used)) static int FUNC6(struct mlxsw_sp_rif *rif, bool enable)
{
	struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
	struct mlxsw_sp_rif_subport *rif_subport;
	char ritr_pl[MLXSW_REG_RITR_LEN];

	rif_subport = FUNC5(rif);
	FUNC2(ritr_pl, enable, MLXSW_REG_RITR_SP_IF,
			    rif->rif_index, rif->vr_id, rif->dev->mtu);
	FUNC1(ritr_pl, rif->dev->dev_addr);
	FUNC3(ritr_pl, rif_subport->lag,
				  rif_subport->lag ? rif_subport->lag_id :
						     rif_subport->system_port,
				  rif_subport->vid);

	return FUNC4(mlxsw_sp->core, FUNC0(ritr), ritr_pl);
}