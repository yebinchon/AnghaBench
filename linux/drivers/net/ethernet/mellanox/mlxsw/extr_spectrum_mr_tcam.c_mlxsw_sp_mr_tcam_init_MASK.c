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
struct mlxsw_sp_mr_tcam_ops {int (* init ) (struct mlxsw_sp*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  priv_size; } ;
struct mlxsw_sp_mr_tcam {int /*<<< orphan*/  priv; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; struct mlxsw_sp_mr_tcam_ops* mr_tcam_ops; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MC_ERIF_LIST_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp *mlxsw_sp, void *priv)
{
	const struct mlxsw_sp_mr_tcam_ops *ops = mlxsw_sp->mr_tcam_ops;
	struct mlxsw_sp_mr_tcam *mr_tcam = priv;
	int err;

	if (!FUNC0(mlxsw_sp->core, MC_ERIF_LIST_ENTRIES))
		return -EIO;

	mr_tcam->priv = FUNC2(ops->priv_size, GFP_KERNEL);
	if (!mr_tcam->priv)
		return -ENOMEM;

	err = ops->init(mlxsw_sp, mr_tcam->priv);
	if (err)
		goto err_init;
	return 0;

err_init:
	FUNC1(mr_tcam->priv);
	return err;
}