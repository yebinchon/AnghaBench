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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_SMID_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp*) ; 
 int /*<<< orphan*/  smid ; 

__attribute__((used)) static int FUNC6(struct mlxsw_sp *mlxsw_sp,
					 u16 mid_idx, bool add)
{
	char *smid_pl;
	int err;

	smid_pl = FUNC2(MLXSW_REG_SMID_LEN, GFP_KERNEL);
	if (!smid_pl)
		return -ENOMEM;

	FUNC3(smid_pl, mid_idx,
			    FUNC5(mlxsw_sp), add);
	err = FUNC4(mlxsw_sp->core, FUNC0(smid), smid_pl);
	FUNC1(smid_pl);
	return err;
}