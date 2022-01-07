
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cls_matchall_offload {int command; } ;
struct mlxsw_sp_port {int dummy; } ;


 int EOPNOTSUPP ;


 int mlxsw_sp_port_add_cls_matchall (struct mlxsw_sp_port*,struct tc_cls_matchall_offload*,int) ;
 int mlxsw_sp_port_del_cls_matchall (struct mlxsw_sp_port*,struct tc_cls_matchall_offload*) ;

__attribute__((used)) static int mlxsw_sp_setup_tc_cls_matchall(struct mlxsw_sp_port *mlxsw_sp_port,
       struct tc_cls_matchall_offload *f,
       bool ingress)
{
 switch (f->command) {
 case 128:
  return mlxsw_sp_port_add_cls_matchall(mlxsw_sp_port, f,
            ingress);
 case 129:
  mlxsw_sp_port_del_cls_matchall(mlxsw_sp_port, f);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
