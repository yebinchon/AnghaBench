
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlxsw_sp_qdisc_ops {scalar_t__ type; int (* check_params ) (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*,void*) ;int (* replace ) (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*,void*) ;int (* unoffload ) (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*,void*) ;int (* clean_stats ) (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*) ;} ;
struct mlxsw_sp_qdisc {scalar_t__ handle; struct mlxsw_sp_qdisc_ops* ops; } ;
struct mlxsw_sp_port {int dummy; } ;


 int mlxsw_sp_qdisc_destroy (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*) ;
 int stub1 (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*,void*) ;
 int stub2 (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*,void*) ;
 int stub3 (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*) ;
 int stub4 (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*,void*) ;

__attribute__((used)) static int
mlxsw_sp_qdisc_replace(struct mlxsw_sp_port *mlxsw_sp_port, u32 handle,
         struct mlxsw_sp_qdisc *mlxsw_sp_qdisc,
         struct mlxsw_sp_qdisc_ops *ops, void *params)
{
 int err;

 if (mlxsw_sp_qdisc->ops && mlxsw_sp_qdisc->ops->type != ops->type)





  mlxsw_sp_qdisc_destroy(mlxsw_sp_port, mlxsw_sp_qdisc);
 err = ops->check_params(mlxsw_sp_port, mlxsw_sp_qdisc, params);
 if (err)
  goto err_bad_param;

 err = ops->replace(mlxsw_sp_port, mlxsw_sp_qdisc, params);
 if (err)
  goto err_config;

 if (mlxsw_sp_qdisc->handle != handle) {
  mlxsw_sp_qdisc->ops = ops;
  if (ops->clean_stats)
   ops->clean_stats(mlxsw_sp_port, mlxsw_sp_qdisc);
 }

 mlxsw_sp_qdisc->handle = handle;
 return 0;

err_bad_param:
err_config:
 if (mlxsw_sp_qdisc->handle == handle && ops->unoffload)
  ops->unoffload(mlxsw_sp_port, mlxsw_sp_qdisc, params);

 mlxsw_sp_qdisc_destroy(mlxsw_sp_port, mlxsw_sp_qdisc);
 return err;
}
