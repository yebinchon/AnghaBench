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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_SFMR_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_SFMR_OP_CREATE_FID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sfmr ; 

__attribute__((used)) static int FUNC8(struct mlxsw_sp *mlxsw_sp, u16 fid_index,
			       __be32 vni, bool vni_valid, u32 nve_flood_index,
			       bool nve_flood_index_valid)
{
	char sfmr_pl[MLXSW_REG_SFMR_LEN];

	FUNC3(sfmr_pl, MLXSW_REG_SFMR_OP_CREATE_FID, fid_index,
			    0);
	FUNC6(sfmr_pl, vni_valid);
	FUNC4(sfmr_pl, FUNC1(vni));
	FUNC5(sfmr_pl, nve_flood_index_valid);
	FUNC2(sfmr_pl, nve_flood_index);
	return FUNC7(mlxsw_sp->core, FUNC0(sfmr), sfmr_pl);
}