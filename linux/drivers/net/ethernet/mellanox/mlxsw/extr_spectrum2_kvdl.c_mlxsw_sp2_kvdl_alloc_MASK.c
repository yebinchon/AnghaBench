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
struct mlxsw_sp2_kvdl_part {int dummy; } ;
struct mlxsw_sp2_kvdl {struct mlxsw_sp2_kvdl_part** parts; } ;
struct mlxsw_sp {int dummy; } ;
typedef  enum mlxsw_sp_kvdl_entry_type { ____Placeholder_mlxsw_sp_kvdl_entry_type } mlxsw_sp_kvdl_entry_type ;

/* Variables and functions */
 int FUNC0 (struct mlxsw_sp2_kvdl_part*,unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct mlxsw_sp *mlxsw_sp, void *priv,
				enum mlxsw_sp_kvdl_entry_type type,
				unsigned int entry_count,
				u32 *p_entry_index)
{
	unsigned int size = entry_count * FUNC1(type);
	struct mlxsw_sp2_kvdl *kvdl = priv;
	struct mlxsw_sp2_kvdl_part *part = kvdl->parts[type];

	return FUNC0(part, size, p_entry_index);
}