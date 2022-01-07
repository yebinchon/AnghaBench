
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlxsw_sp_span_entry {struct net_device const* to_dev; scalar_t__ ref_count; } ;
struct TYPE_2__ {int entries_count; struct mlxsw_sp_span_entry* entries; } ;
struct mlxsw_sp {TYPE_1__ span; } ;



struct mlxsw_sp_span_entry *
mlxsw_sp_span_entry_find_by_port(struct mlxsw_sp *mlxsw_sp,
     const struct net_device *to_dev)
{
 int i;

 for (i = 0; i < mlxsw_sp->span.entries_count; i++) {
  struct mlxsw_sp_span_entry *curr = &mlxsw_sp->span.entries[i];

  if (curr->ref_count && curr->to_dev == to_dev)
   return curr;
 }
 return ((void*)0);
}
