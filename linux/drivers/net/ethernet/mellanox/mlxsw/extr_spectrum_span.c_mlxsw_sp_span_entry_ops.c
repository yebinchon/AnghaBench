
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_span_entry_ops {scalar_t__ (* can_handle ) (struct net_device const*) ;} ;
struct mlxsw_sp {int dummy; } ;


 size_t ARRAY_SIZE (struct mlxsw_sp_span_entry_ops const**) ;
 struct mlxsw_sp_span_entry_ops const** mlxsw_sp_span_entry_types ;
 scalar_t__ stub1 (struct net_device const*) ;

__attribute__((used)) static const struct mlxsw_sp_span_entry_ops *
mlxsw_sp_span_entry_ops(struct mlxsw_sp *mlxsw_sp,
   const struct net_device *to_dev)
{
 size_t i;

 for (i = 0; i < ARRAY_SIZE(mlxsw_sp_span_entry_types); ++i)
  if (mlxsw_sp_span_entry_types[i]->can_handle(to_dev))
   return mlxsw_sp_span_entry_types[i];

 return ((void*)0);
}
