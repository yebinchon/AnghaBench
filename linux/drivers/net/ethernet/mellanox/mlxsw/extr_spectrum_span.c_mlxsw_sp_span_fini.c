
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_span_entry {int bound_ports_list; } ;
struct TYPE_2__ {int entries_count; struct mlxsw_sp_span_entry* entries; } ;
struct mlxsw_sp {TYPE_1__ span; } ;


 int WARN_ON_ONCE (int) ;
 int kfree (struct mlxsw_sp_span_entry*) ;
 int list_empty (int *) ;

void mlxsw_sp_span_fini(struct mlxsw_sp *mlxsw_sp)
{
 int i;

 for (i = 0; i < mlxsw_sp->span.entries_count; i++) {
  struct mlxsw_sp_span_entry *curr = &mlxsw_sp->span.entries[i];

  WARN_ON_ONCE(!list_empty(&curr->bound_ports_list));
 }
 kfree(mlxsw_sp->span.entries);
}
