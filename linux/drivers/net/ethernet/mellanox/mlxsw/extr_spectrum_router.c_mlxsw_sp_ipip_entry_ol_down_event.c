
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_ipip_entry {scalar_t__ decap_fib_entry; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_ipip_entry_demote_decap (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*) ;

__attribute__((used)) static void
mlxsw_sp_ipip_entry_ol_down_event(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_ipip_entry *ipip_entry)
{
 if (ipip_entry->decap_fib_entry)
  mlxsw_sp_ipip_entry_demote_decap(mlxsw_sp, ipip_entry);
}
