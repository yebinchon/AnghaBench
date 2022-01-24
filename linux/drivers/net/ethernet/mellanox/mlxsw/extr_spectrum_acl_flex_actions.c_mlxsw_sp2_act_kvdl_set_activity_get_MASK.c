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
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PEFA_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  pefa ; 

__attribute__((used)) static int FUNC4(void *priv, u32 kvdl_index,
					       bool *activity)
{
	struct mlxsw_sp *mlxsw_sp = priv;
	char pefa_pl[MLXSW_REG_PEFA_LEN];
	int err;

	FUNC1(pefa_pl, kvdl_index, true, NULL);
	err = FUNC3(mlxsw_sp->core, FUNC0(pefa), pefa_pl);
	if (err)
		return err;
	FUNC2(pefa_pl, activity);
	return 0;
}