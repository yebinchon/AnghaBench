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
struct mlxsw_sp2_mr_tcam {int /*<<< orphan*/  acl_block; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp2_mr_tcam*) ; 
 int FUNC1 (struct mlxsw_sp2_mr_tcam*) ; 
 int FUNC2 (struct mlxsw_sp2_mr_tcam*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mlxsw_sp *mlxsw_sp, void *priv)
{
	struct mlxsw_sp2_mr_tcam *mr_tcam = priv;
	int err;

	mr_tcam->mlxsw_sp = mlxsw_sp;
	mr_tcam->acl_block = FUNC3(mlxsw_sp, NULL);
	if (!mr_tcam->acl_block)
		return -ENOMEM;

	err = FUNC1(mr_tcam);
	if (err)
		goto err_ipv4_init;

	err = FUNC2(mr_tcam);
	if (err)
		goto err_ipv6_init;

	return 0;

err_ipv6_init:
	FUNC0(mr_tcam);
err_ipv4_init:
	FUNC4(mr_tcam->acl_block);
	return err;
}