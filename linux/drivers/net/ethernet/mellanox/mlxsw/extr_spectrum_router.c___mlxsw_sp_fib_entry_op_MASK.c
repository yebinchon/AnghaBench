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
struct mlxsw_sp_fib_entry {int type; } ;
struct mlxsw_sp {int dummy; } ;
typedef  enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;

/* Variables and functions */
 int EINVAL ; 
#define  MLXSW_SP_FIB_ENTRY_TYPE_BLACKHOLE 133 
#define  MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP 132 
#define  MLXSW_SP_FIB_ENTRY_TYPE_LOCAL 131 
#define  MLXSW_SP_FIB_ENTRY_TYPE_NVE_DECAP 130 
#define  MLXSW_SP_FIB_ENTRY_TYPE_REMOTE 129 
#define  MLXSW_SP_FIB_ENTRY_TYPE_TRAP 128 
 int FUNC0 (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,int) ; 
 int FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,int) ; 
 int FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,int) ; 
 int FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,int) ; 
 int FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,int) ; 
 int FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,int) ; 

__attribute__((used)) static int FUNC6(struct mlxsw_sp *mlxsw_sp,
				   struct mlxsw_sp_fib_entry *fib_entry,
				   enum mlxsw_reg_ralue_op op)
{
	switch (fib_entry->type) {
	case MLXSW_SP_FIB_ENTRY_TYPE_REMOTE:
		return FUNC4(mlxsw_sp, fib_entry, op);
	case MLXSW_SP_FIB_ENTRY_TYPE_LOCAL:
		return FUNC2(mlxsw_sp, fib_entry, op);
	case MLXSW_SP_FIB_ENTRY_TYPE_TRAP:
		return FUNC5(mlxsw_sp, fib_entry, op);
	case MLXSW_SP_FIB_ENTRY_TYPE_BLACKHOLE:
		return FUNC0(mlxsw_sp, fib_entry, op);
	case MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP:
		return FUNC1(mlxsw_sp,
							fib_entry, op);
	case MLXSW_SP_FIB_ENTRY_TYPE_NVE_DECAP:
		return FUNC3(mlxsw_sp, fib_entry, op);
	}
	return -EINVAL;
}