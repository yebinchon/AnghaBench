
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_qdisc {TYPE_1__* ops; int handle; } ;
struct mlxsw_sp_port {int dummy; } ;
struct TYPE_2__ {int (* destroy ) (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*) ;} ;


 int TC_H_UNSPEC ;
 int stub1 (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*) ;

__attribute__((used)) static int
mlxsw_sp_qdisc_destroy(struct mlxsw_sp_port *mlxsw_sp_port,
         struct mlxsw_sp_qdisc *mlxsw_sp_qdisc)
{
 int err = 0;

 if (!mlxsw_sp_qdisc)
  return 0;

 if (mlxsw_sp_qdisc->ops && mlxsw_sp_qdisc->ops->destroy)
  err = mlxsw_sp_qdisc->ops->destroy(mlxsw_sp_port,
         mlxsw_sp_qdisc);

 mlxsw_sp_qdisc->handle = TC_H_UNSPEC;
 mlxsw_sp_qdisc->ops = ((void*)0);
 return err;
}
