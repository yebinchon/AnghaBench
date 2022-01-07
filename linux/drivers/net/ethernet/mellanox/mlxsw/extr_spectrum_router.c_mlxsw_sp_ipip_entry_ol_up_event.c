
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_ipip_entry {int dummy; } ;
struct mlxsw_sp_fib_entry {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 struct mlxsw_sp_fib_entry* mlxsw_sp_ipip_entry_find_decap (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*) ;
 int mlxsw_sp_ipip_entry_promote_decap (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*,struct mlxsw_sp_fib_entry*) ;

__attribute__((used)) static void
mlxsw_sp_ipip_entry_ol_up_event(struct mlxsw_sp *mlxsw_sp,
    struct mlxsw_sp_ipip_entry *ipip_entry)
{
 struct mlxsw_sp_fib_entry *decap_fib_entry;

 decap_fib_entry = mlxsw_sp_ipip_entry_find_decap(mlxsw_sp, ipip_entry);
 if (decap_fib_entry)
  mlxsw_sp_ipip_entry_promote_decap(mlxsw_sp, ipip_entry,
        decap_fib_entry);
}
