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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_SFDF_FLUSH_PER_NVE_AND_FID ; 
 int MLXSW_REG_SFDF_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sfdf ; 

__attribute__((used)) static void FUNC4(struct mlxsw_sp *mlxsw_sp,
					  u16 fid_index)
{
	char sfdf_pl[MLXSW_REG_SFDF_LEN];

	FUNC2(sfdf_pl, MLXSW_REG_SFDF_FLUSH_PER_NVE_AND_FID);
	FUNC1(sfdf_pl, fid_index);
	FUNC3(mlxsw_sp->core, FUNC0(sfdf), sfdf_pl);
}