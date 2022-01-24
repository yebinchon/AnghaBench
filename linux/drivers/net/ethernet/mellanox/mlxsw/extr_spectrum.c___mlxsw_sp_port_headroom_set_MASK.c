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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct mlxsw_sp_port {int /*<<< orphan*/  local_port; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct ieee_pfc {int pfc_en; scalar_t__ delay; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int ENOBUFS ; 
 int IEEE_8021QAZ_MAX_TCS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PBMC_LEN ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct mlxsw_sp*,int,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC7 (struct mlxsw_sp*,int) ; 
 scalar_t__ FUNC8 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  pbmc ; 

int FUNC9(struct mlxsw_sp_port *mlxsw_sp_port, int mtu,
				 u8 *prio_tc, bool pause_en,
				 struct ieee_pfc *my_pfc)
{
	struct mlxsw_sp *mlxsw_sp = mlxsw_sp_port->mlxsw_sp;
	u8 pfc_en = !!my_pfc ? my_pfc->pfc_en : 0;
	u16 delay = !!my_pfc ? my_pfc->delay : 0;
	char pbmc_pl[MLXSW_REG_PBMC_LEN];
	u32 taken_headroom_cells = 0;
	u32 max_headroom_cells;
	int i, j, err;

	max_headroom_cells = FUNC8(mlxsw_sp);

	FUNC2(pbmc_pl, mlxsw_sp_port->local_port, 0, 0);
	err = FUNC3(mlxsw_sp->core, FUNC1(pbmc), pbmc_pl);
	if (err)
		return err;

	for (i = 0; i < IEEE_8021QAZ_MAX_TCS; i++) {
		bool configure = false;
		bool pfc = false;
		u16 thres_cells;
		u16 delay_cells;
		u16 total_cells;
		bool lossy;

		for (j = 0; j < IEEE_8021QAZ_MAX_TCS; j++) {
			if (prio_tc[j] == i) {
				pfc = pfc_en & FUNC0(j);
				configure = true;
				break;
			}
		}

		if (!configure)
			continue;

		lossy = !(pfc || pause_en);
		thres_cells = FUNC7(mlxsw_sp, mtu);
		delay_cells = FUNC5(mlxsw_sp, mtu, delay,
							pfc, pause_en);
		total_cells = thres_cells + delay_cells;

		taken_headroom_cells += total_cells;
		if (taken_headroom_cells > max_headroom_cells)
			return -ENOBUFS;

		FUNC6(pbmc_pl, i, total_cells,
				     thres_cells, lossy);
	}

	return FUNC4(mlxsw_sp->core, FUNC1(pbmc), pbmc_pl);
}