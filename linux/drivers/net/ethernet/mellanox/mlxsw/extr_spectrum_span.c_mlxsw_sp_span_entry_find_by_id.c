
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_span_entry {int id; scalar_t__ ref_count; } ;
struct TYPE_2__ {int entries_count; struct mlxsw_sp_span_entry* entries; } ;
struct mlxsw_sp {TYPE_1__ span; } ;



__attribute__((used)) static struct mlxsw_sp_span_entry *
mlxsw_sp_span_entry_find_by_id(struct mlxsw_sp *mlxsw_sp, int span_id)
{
 int i;

 for (i = 0; i < mlxsw_sp->span.entries_count; i++) {
  struct mlxsw_sp_span_entry *curr = &mlxsw_sp->span.entries[i];

  if (curr->ref_count && curr->id == span_id)
   return curr;
 }
 return ((void*)0);
}
