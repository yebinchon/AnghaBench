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
 int MLXSW_REG_SFMR_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  sfmr ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp *mlxsw_sp, u16 fid_index,
			   u16 fid_offset, bool valid)
{
	char sfmr_pl[MLXSW_REG_SFMR_LEN];

	FUNC1(sfmr_pl, FUNC3(valid), fid_index,
			    fid_offset);
	return FUNC2(mlxsw_sp->core, FUNC0(sfmr), sfmr_pl);
}