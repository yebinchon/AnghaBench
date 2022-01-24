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
struct mlxsw_sp_lpm_tree {int /*<<< orphan*/  id; scalar_t__ proto; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_reg_ralxx_protocol { ____Placeholder_mlxsw_reg_ralxx_protocol } mlxsw_reg_ralxx_protocol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RALTA_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ralta ; 

__attribute__((used)) static void FUNC3(struct mlxsw_sp *mlxsw_sp,
				   struct mlxsw_sp_lpm_tree *lpm_tree)
{
	char ralta_pl[MLXSW_REG_RALTA_LEN];

	FUNC1(ralta_pl, false,
			     (enum mlxsw_reg_ralxx_protocol) lpm_tree->proto,
			     lpm_tree->id);
	FUNC2(mlxsw_sp->core, FUNC0(ralta), ralta_pl);
}