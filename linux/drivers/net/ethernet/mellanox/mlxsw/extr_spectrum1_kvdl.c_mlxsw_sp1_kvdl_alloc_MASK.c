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
struct mlxsw_sp1_kvdl_part {int dummy; } ;
struct mlxsw_sp1_kvdl {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef  enum mlxsw_sp_kvdl_entry_type { ____Placeholder_mlxsw_sp_kvdl_entry_type } mlxsw_sp_kvdl_entry_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp1_kvdl_part*) ; 
 int FUNC1 (struct mlxsw_sp1_kvdl_part*) ; 
 struct mlxsw_sp1_kvdl_part* FUNC2 (struct mlxsw_sp1_kvdl*,unsigned int) ; 
 int FUNC3 (struct mlxsw_sp1_kvdl_part*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp *mlxsw_sp, void *priv,
				enum mlxsw_sp_kvdl_entry_type type,
				unsigned int entry_count,
				u32 *p_entry_index)
{
	struct mlxsw_sp1_kvdl *kvdl = priv;
	struct mlxsw_sp1_kvdl_part *part;

	/* Find partition with smallest allocation size satisfying the
	 * requested size.
	 */
	part = FUNC2(kvdl, entry_count);
	if (FUNC0(part))
		return FUNC1(part);

	return FUNC3(part, p_entry_index);
}