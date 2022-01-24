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
struct mlxsw_sp {int dummy; } ;
struct mlxsw_reg_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp*,char*,int) ; 

__attribute__((used)) static void FUNC1(const struct mlxsw_reg_info *reg,
					      char *mtpptr_pl, void *priv)
{
	struct mlxsw_sp *mlxsw_sp = priv;

	FUNC0(mlxsw_sp, mtpptr_pl, true);
}