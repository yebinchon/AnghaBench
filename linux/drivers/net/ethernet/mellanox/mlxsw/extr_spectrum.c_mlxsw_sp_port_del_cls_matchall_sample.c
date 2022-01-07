
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_port {TYPE_1__* sample; } ;
struct TYPE_2__ {int psample_group; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int mlxsw_sp_port_sample_set (struct mlxsw_sp_port*,int,int) ;

__attribute__((used)) static void
mlxsw_sp_port_del_cls_matchall_sample(struct mlxsw_sp_port *mlxsw_sp_port)
{
 if (!mlxsw_sp_port->sample)
  return;

 mlxsw_sp_port_sample_set(mlxsw_sp_port, 0, 1);
 RCU_INIT_POINTER(mlxsw_sp_port->sample->psample_group, ((void*)0));
}
