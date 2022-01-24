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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_rif {TYPE_1__* dev; int /*<<< orphan*/  vr_id; int /*<<< orphan*/  rif_index; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_reg_ritr_if_type { ____Placeholder_mlxsw_reg_ritr_if_type } mlxsw_reg_ritr_if_type ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RITR_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ritr ; 

__attribute__((used)) static int FUNC5(struct mlxsw_sp_rif *rif,
				    enum mlxsw_reg_ritr_if_type type,
				    u16 vid_fid, bool enable)
{
	struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
	char ritr_pl[MLXSW_REG_RITR_LEN];

	FUNC3(ritr_pl, enable, type, rif->rif_index, rif->vr_id,
			    rif->dev->mtu);
	FUNC2(ritr_pl, rif->dev->dev_addr);
	FUNC1(ritr_pl, type, vid_fid);

	return FUNC4(mlxsw_sp->core, FUNC0(ritr), ritr_pl);
}