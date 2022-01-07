
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_port {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;



 int mlxsw_sp_setup_tc_block (struct mlxsw_sp_port*,void*) ;
 int mlxsw_sp_setup_tc_prio (struct mlxsw_sp_port*,void*) ;
 int mlxsw_sp_setup_tc_red (struct mlxsw_sp_port*,void*) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlxsw_sp_setup_tc(struct net_device *dev, enum tc_setup_type type,
        void *type_data)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);

 switch (type) {
 case 130:
  return mlxsw_sp_setup_tc_block(mlxsw_sp_port, type_data);
 case 128:
  return mlxsw_sp_setup_tc_red(mlxsw_sp_port, type_data);
 case 129:
  return mlxsw_sp_setup_tc_prio(mlxsw_sp_port, type_data);
 default:
  return -EOPNOTSUPP;
 }
}
