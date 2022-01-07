
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_ipip_ops {int (* fib_entry_op ) (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*,int,int ) ;} ;
struct mlxsw_sp_ipip_entry {size_t ipipt; } ;
struct TYPE_4__ {int tunnel_index; struct mlxsw_sp_ipip_entry* ipip_entry; } ;
struct mlxsw_sp_fib_entry {TYPE_2__ decap; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
typedef enum mlxsw_reg_ralue_op { ____Placeholder_mlxsw_reg_ralue_op } mlxsw_reg_ralue_op ;
struct TYPE_3__ {struct mlxsw_sp_ipip_ops** ipip_ops_arr; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int stub1 (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*,int,int ) ;

__attribute__((used)) static int
mlxsw_sp_fib_entry_op_ipip_decap(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_fib_entry *fib_entry,
     enum mlxsw_reg_ralue_op op)
{
 struct mlxsw_sp_ipip_entry *ipip_entry = fib_entry->decap.ipip_entry;
 const struct mlxsw_sp_ipip_ops *ipip_ops;

 if (WARN_ON(!ipip_entry))
  return -EINVAL;

 ipip_ops = mlxsw_sp->router->ipip_ops_arr[ipip_entry->ipipt];
 return ipip_ops->fib_entry_op(mlxsw_sp, ipip_entry, op,
          fib_entry->decap.tunnel_index);
}
