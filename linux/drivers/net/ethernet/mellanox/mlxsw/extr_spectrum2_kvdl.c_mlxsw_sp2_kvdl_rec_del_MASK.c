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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_IEDR_LEN ; 
 int /*<<< orphan*/  iedr ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct mlxsw_sp *mlxsw_sp, u8 res_type,
				  u16 size, u32 kvdl_index)
{
	char *iedr_pl;
	int err;

	iedr_pl = FUNC2(MLXSW_REG_IEDR_LEN, GFP_KERNEL);
	if (!iedr_pl)
		return -ENOMEM;

	FUNC3(iedr_pl);
	FUNC4(iedr_pl, 0, res_type, size, kvdl_index);
	err = FUNC5(mlxsw_sp->core, FUNC0(iedr), iedr_pl);
	FUNC1(iedr_pl);
	return err;
}