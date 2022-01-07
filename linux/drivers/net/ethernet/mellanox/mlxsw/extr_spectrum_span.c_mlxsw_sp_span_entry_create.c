
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlxsw_sp_span_parms {int dummy; } ;
struct mlxsw_sp_span_entry_ops {int dummy; } ;
struct mlxsw_sp_span_entry {int ref_count; struct net_device const* to_dev; struct mlxsw_sp_span_entry_ops const* ops; } ;
struct TYPE_2__ {int entries_count; struct mlxsw_sp_span_entry* entries; } ;
struct mlxsw_sp {TYPE_1__ span; } ;


 int mlxsw_sp_span_entry_configure (struct mlxsw_sp*,struct mlxsw_sp_span_entry*,struct mlxsw_sp_span_parms) ;

__attribute__((used)) static struct mlxsw_sp_span_entry *
mlxsw_sp_span_entry_create(struct mlxsw_sp *mlxsw_sp,
      const struct net_device *to_dev,
      const struct mlxsw_sp_span_entry_ops *ops,
      struct mlxsw_sp_span_parms sparms)
{
 struct mlxsw_sp_span_entry *span_entry = ((void*)0);
 int i;


 for (i = 0; i < mlxsw_sp->span.entries_count; i++) {
  if (!mlxsw_sp->span.entries[i].ref_count) {
   span_entry = &mlxsw_sp->span.entries[i];
   break;
  }
 }
 if (!span_entry)
  return ((void*)0);

 span_entry->ops = ops;
 span_entry->ref_count = 1;
 span_entry->to_dev = to_dev;
 mlxsw_sp_span_entry_configure(mlxsw_sp, span_entry, sparms);

 return span_entry;
}
