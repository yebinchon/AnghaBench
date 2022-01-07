
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_span_entry {int * ops; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_span_entry_deconfigure (struct mlxsw_sp_span_entry*) ;
 int mlxsw_sp_span_entry_ops_nop ;

void mlxsw_sp_span_entry_invalidate(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_span_entry *span_entry)
{
 mlxsw_sp_span_entry_deconfigure(span_entry);
 span_entry->ops = &mlxsw_sp_span_entry_ops_nop;
}
