
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_ipip_entry {int dummy; } ;
struct mlxsw_sp_fib_entry {int type; } ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP ;
 scalar_t__ mlxsw_sp_fib_entry_decap_init (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*,struct mlxsw_sp_ipip_entry*) ;
 scalar_t__ mlxsw_sp_fib_entry_update (struct mlxsw_sp*,struct mlxsw_sp_fib_entry*) ;
 int mlxsw_sp_ipip_entry_demote_decap (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*) ;

__attribute__((used)) static void
mlxsw_sp_ipip_entry_promote_decap(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_ipip_entry *ipip_entry,
      struct mlxsw_sp_fib_entry *decap_fib_entry)
{
 if (mlxsw_sp_fib_entry_decap_init(mlxsw_sp, decap_fib_entry,
       ipip_entry))
  return;
 decap_fib_entry->type = MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP;

 if (mlxsw_sp_fib_entry_update(mlxsw_sp, decap_fib_entry))
  mlxsw_sp_ipip_entry_demote_decap(mlxsw_sp, ipip_entry);
}
