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
typedef  int /*<<< orphan*/  u64 ;
struct mlxsw_reg_trans {int dummy; } ;
struct mlxsw_reg_info {int dummy; } ;
struct mlxsw_core {int dummy; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  mlxsw_reg_trans_cb_t ;
typedef  enum mlxsw_core_reg_access_type { ____Placeholder_mlxsw_core_reg_access_type } mlxsw_core_reg_access_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_reg_trans*) ; 
 struct mlxsw_reg_trans* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_core*) ; 
 int FUNC3 (struct mlxsw_core*,struct mlxsw_reg_info const*,char*,int,struct mlxsw_reg_trans*,struct list_head*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlxsw_core *mlxsw_core,
				      const struct mlxsw_reg_info *reg,
				      char *payload,
				      enum mlxsw_core_reg_access_type type,
				      struct list_head *bulk_list,
				      mlxsw_reg_trans_cb_t *cb,
				      unsigned long cb_priv)
{
	u64 tid = FUNC2(mlxsw_core);
	struct mlxsw_reg_trans *trans;
	int err;

	trans = FUNC1(sizeof(*trans), GFP_KERNEL);
	if (!trans)
		return -ENOMEM;

	err = FUNC3(mlxsw_core, reg, payload, type, trans,
				    bulk_list, cb, cb_priv, tid);
	if (err) {
		FUNC0(trans);
		return err;
	}
	return 0;
}