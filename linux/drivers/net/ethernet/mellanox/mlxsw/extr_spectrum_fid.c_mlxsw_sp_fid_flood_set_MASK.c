#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mlxsw_sp_flood_table {int /*<<< orphan*/  table_type; int /*<<< orphan*/  table_index; } ;
struct mlxsw_sp_fid_ops {int /*<<< orphan*/  (* flood_index ) (struct mlxsw_sp_fid*) ;} ;
struct mlxsw_sp_fid_family {TYPE_1__* mlxsw_sp; int /*<<< orphan*/  flood_tables; struct mlxsw_sp_fid_ops* ops; } ;
struct mlxsw_sp_fid {struct mlxsw_sp_fid_family* fid_family; } ;
typedef  enum mlxsw_sp_flood_type { ____Placeholder_mlxsw_sp_flood_type } mlxsw_sp_flood_type ;
struct TYPE_2__ {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_SFTR_LEN ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct mlxsw_sp_flood_table* FUNC6 (struct mlxsw_sp_fid*,int) ; 
 int /*<<< orphan*/  sftr ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_fid*) ; 

int FUNC8(struct mlxsw_sp_fid *fid,
			   enum mlxsw_sp_flood_type packet_type, u8 local_port,
			   bool member)
{
	struct mlxsw_sp_fid_family *fid_family = fid->fid_family;
	const struct mlxsw_sp_fid_ops *ops = fid_family->ops;
	const struct mlxsw_sp_flood_table *flood_table;
	char *sftr_pl;
	int err;

	if (FUNC1(!fid_family->flood_tables || !ops->flood_index))
		return -EINVAL;

	flood_table = FUNC6(fid, packet_type);
	if (!flood_table)
		return -ESRCH;

	sftr_pl = FUNC3(MLXSW_REG_SFTR_LEN, GFP_KERNEL);
	if (!sftr_pl)
		return -ENOMEM;

	FUNC4(sftr_pl, flood_table->table_index,
			    ops->flood_index(fid), flood_table->table_type, 1,
			    local_port, member);
	err = FUNC5(fid_family->mlxsw_sp->core, FUNC0(sftr),
			      sftr_pl);
	FUNC2(sftr_pl);
	return err;
}