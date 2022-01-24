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
typedef  enum mlxsw_reg_rauhtd_type { ____Placeholder_mlxsw_reg_rauhtd_type } mlxsw_reg_rauhtd_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLXSW_REG_RAUHTD_LEN ; 
 int MLXSW_REG_RAUHTD_TYPE_IPV4 ; 
 int MLXSW_REG_RAUHTD_TYPE_IPV6 ; 
 int FUNC0 (struct mlxsw_sp*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mlxsw_sp *mlxsw_sp)
{
	enum mlxsw_reg_rauhtd_type type;
	char *rauhtd_pl;
	int err;

	rauhtd_pl = FUNC2(MLXSW_REG_RAUHTD_LEN, GFP_KERNEL);
	if (!rauhtd_pl)
		return -ENOMEM;

	type = MLXSW_REG_RAUHTD_TYPE_IPV4;
	err = FUNC0(mlxsw_sp, rauhtd_pl, type);
	if (err)
		goto out;

	type = MLXSW_REG_RAUHTD_TYPE_IPV6;
	err = FUNC0(mlxsw_sp, rauhtd_pl, type);
out:
	FUNC1(rauhtd_pl);
	return err;
}