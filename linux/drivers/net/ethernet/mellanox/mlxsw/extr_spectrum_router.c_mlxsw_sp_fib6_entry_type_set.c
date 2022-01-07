
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib_entry {void* type; } ;
struct mlxsw_sp {int dummy; } ;
struct fib6_info {int fib6_flags; scalar_t__ fib6_type; } ;


 void* MLXSW_SP_FIB_ENTRY_TYPE_BLACKHOLE ;
 void* MLXSW_SP_FIB_ENTRY_TYPE_LOCAL ;
 void* MLXSW_SP_FIB_ENTRY_TYPE_REMOTE ;
 void* MLXSW_SP_FIB_ENTRY_TYPE_TRAP ;
 int RTF_ANYCAST ;
 int RTF_LOCAL ;
 int RTF_REJECT ;
 scalar_t__ RTN_BLACKHOLE ;
 scalar_t__ mlxsw_sp_rt6_is_gateway (struct mlxsw_sp*,struct fib6_info const*) ;

__attribute__((used)) static void mlxsw_sp_fib6_entry_type_set(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_fib_entry *fib_entry,
      const struct fib6_info *rt)
{






 if (rt->fib6_flags & (RTF_LOCAL | RTF_ANYCAST))
  fib_entry->type = MLXSW_SP_FIB_ENTRY_TYPE_TRAP;
 else if (rt->fib6_type == RTN_BLACKHOLE)
  fib_entry->type = MLXSW_SP_FIB_ENTRY_TYPE_BLACKHOLE;
 else if (rt->fib6_flags & RTF_REJECT)
  fib_entry->type = MLXSW_SP_FIB_ENTRY_TYPE_LOCAL;
 else if (mlxsw_sp_rt6_is_gateway(mlxsw_sp, rt))
  fib_entry->type = MLXSW_SP_FIB_ENTRY_TYPE_REMOTE;
 else
  fib_entry->type = MLXSW_SP_FIB_ENTRY_TYPE_LOCAL;
}
