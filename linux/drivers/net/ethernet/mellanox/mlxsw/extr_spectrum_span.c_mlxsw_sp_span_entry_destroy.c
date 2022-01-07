
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_span_entry {int dummy; } ;


 int mlxsw_sp_span_entry_deconfigure (struct mlxsw_sp_span_entry*) ;

__attribute__((used)) static void mlxsw_sp_span_entry_destroy(struct mlxsw_sp_span_entry *span_entry)
{
 mlxsw_sp_span_entry_deconfigure(span_entry);
}
