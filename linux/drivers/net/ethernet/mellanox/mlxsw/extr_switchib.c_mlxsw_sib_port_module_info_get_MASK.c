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
struct mlxsw_sib {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_PMLP_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  pmlp ; 

__attribute__((used)) static int FUNC5(struct mlxsw_sib *mlxsw_sib,
					  u8 local_port, u8 *p_module,
					  u8 *p_width)
{
	char pmlp_pl[MLXSW_REG_PMLP_LEN];
	int err;

	FUNC2(pmlp_pl, local_port);
	err = FUNC4(mlxsw_sib->core, FUNC0(pmlp), pmlp_pl);
	if (err)
		return err;
	*p_module = FUNC1(pmlp_pl, 0);
	*p_width = FUNC3(pmlp_pl);
	return 0;
}