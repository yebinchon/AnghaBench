
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_port {int dev; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;


 int mlxsw_sp_setup_tc_cls_matchall (struct mlxsw_sp_port*,void*,int) ;
 int tc_cls_can_offload_and_chain0 (int ,void*) ;

__attribute__((used)) static int mlxsw_sp_setup_tc_block_cb_matchall(enum tc_setup_type type,
            void *type_data,
            void *cb_priv, bool ingress)
{
 struct mlxsw_sp_port *mlxsw_sp_port = cb_priv;

 switch (type) {
 case 128:
  if (!tc_cls_can_offload_and_chain0(mlxsw_sp_port->dev,
         type_data))
   return -EOPNOTSUPP;

  return mlxsw_sp_setup_tc_cls_matchall(mlxsw_sp_port, type_data,
            ingress);
 case 129:
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
