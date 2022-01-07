
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_span_parms {int dummy; } ;
struct mlxsw_sp_span_entry_ops {int dummy; } ;
struct mlxsw_sp_span_entry {int ref_count; } ;
struct mlxsw_sp {int dummy; } ;


 struct mlxsw_sp_span_entry* mlxsw_sp_span_entry_create (struct mlxsw_sp*,struct net_device const*,struct mlxsw_sp_span_entry_ops const*,struct mlxsw_sp_span_parms) ;
 struct mlxsw_sp_span_entry* mlxsw_sp_span_entry_find_by_port (struct mlxsw_sp*,struct net_device const*) ;

__attribute__((used)) static struct mlxsw_sp_span_entry *
mlxsw_sp_span_entry_get(struct mlxsw_sp *mlxsw_sp,
   const struct net_device *to_dev,
   const struct mlxsw_sp_span_entry_ops *ops,
   struct mlxsw_sp_span_parms sparms)
{
 struct mlxsw_sp_span_entry *span_entry;

 span_entry = mlxsw_sp_span_entry_find_by_port(mlxsw_sp, to_dev);
 if (span_entry) {

  span_entry->ref_count++;
  return span_entry;
 }

 return mlxsw_sp_span_entry_create(mlxsw_sp, to_dev, ops, sparms);
}
