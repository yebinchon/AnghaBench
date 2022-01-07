
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_span_entry {scalar_t__ ref_count; } ;
struct mlxsw_sp {int dummy; } ;


 int WARN_ON (int) ;
 int mlxsw_sp_span_entry_destroy (struct mlxsw_sp_span_entry*) ;

__attribute__((used)) static int mlxsw_sp_span_entry_put(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_span_entry *span_entry)
{
 WARN_ON(!span_entry->ref_count);
 if (--span_entry->ref_count == 0)
  mlxsw_sp_span_entry_destroy(span_entry);
 return 0;
}
