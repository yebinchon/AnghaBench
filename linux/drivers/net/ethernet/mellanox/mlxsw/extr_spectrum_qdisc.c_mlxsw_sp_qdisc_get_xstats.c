
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_qdisc {TYPE_1__* ops; } ;
struct mlxsw_sp_port {int dummy; } ;
struct TYPE_2__ {int (* get_xstats ) (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*,void*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct mlxsw_sp_port*,struct mlxsw_sp_qdisc*,void*) ;

__attribute__((used)) static int
mlxsw_sp_qdisc_get_xstats(struct mlxsw_sp_port *mlxsw_sp_port,
     struct mlxsw_sp_qdisc *mlxsw_sp_qdisc,
     void *xstats_ptr)
{
 if (mlxsw_sp_qdisc && mlxsw_sp_qdisc->ops &&
     mlxsw_sp_qdisc->ops->get_xstats)
  return mlxsw_sp_qdisc->ops->get_xstats(mlxsw_sp_port,
            mlxsw_sp_qdisc,
            xstats_ptr);

 return -EOPNOTSUPP;
}
