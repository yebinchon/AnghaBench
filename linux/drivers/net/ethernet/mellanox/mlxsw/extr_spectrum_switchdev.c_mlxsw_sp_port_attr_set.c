
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchdev_trans {int dummy; } ;
struct TYPE_2__ {int mrouter; int mc_disabled; int vlan_filtering; int ageing_time; int brport_flags; int stp_state; } ;
struct switchdev_attr {int id; TYPE_1__ u; int orig_dev; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_port {int mlxsw_sp; } ;


 int EOPNOTSUPP ;
 int mlxsw_sp_port_attr_br_ageing_set (struct mlxsw_sp_port*,struct switchdev_trans*,int ) ;
 int mlxsw_sp_port_attr_br_flags_set (struct mlxsw_sp_port*,struct switchdev_trans*,int ,int ) ;
 int mlxsw_sp_port_attr_br_mrouter_set (struct mlxsw_sp_port*,struct switchdev_trans*,int ,int ) ;
 int mlxsw_sp_port_attr_br_pre_flags_set (struct mlxsw_sp_port*,struct switchdev_trans*,int ) ;
 int mlxsw_sp_port_attr_br_vlan_set (struct mlxsw_sp_port*,struct switchdev_trans*,int ,int ) ;
 int mlxsw_sp_port_attr_mrouter_set (struct mlxsw_sp_port*,struct switchdev_trans*,int ,int ) ;
 int mlxsw_sp_port_attr_stp_state_set (struct mlxsw_sp_port*,struct switchdev_trans*,int ,int ) ;
 int mlxsw_sp_port_mc_disabled_set (struct mlxsw_sp_port*,struct switchdev_trans*,int ,int ) ;
 int mlxsw_sp_span_respin (int ) ;
 struct mlxsw_sp_port* netdev_priv (struct net_device*) ;
 scalar_t__ switchdev_trans_ph_commit (struct switchdev_trans*) ;

__attribute__((used)) static int mlxsw_sp_port_attr_set(struct net_device *dev,
      const struct switchdev_attr *attr,
      struct switchdev_trans *trans)
{
 struct mlxsw_sp_port *mlxsw_sp_port = netdev_priv(dev);
 int err;

 switch (attr->id) {
 case 128:
  err = mlxsw_sp_port_attr_stp_state_set(mlxsw_sp_port, trans,
             attr->orig_dev,
             attr->u.stp_state);
  break;
 case 129:
  err = mlxsw_sp_port_attr_br_pre_flags_set(mlxsw_sp_port,
         trans,
         attr->u.brport_flags);
  break;
 case 131:
  err = mlxsw_sp_port_attr_br_flags_set(mlxsw_sp_port, trans,
            attr->orig_dev,
            attr->u.brport_flags);
  break;
 case 135:
  err = mlxsw_sp_port_attr_br_ageing_set(mlxsw_sp_port, trans,
             attr->u.ageing_time);
  break;
 case 132:
  err = mlxsw_sp_port_attr_br_vlan_set(mlxsw_sp_port, trans,
           attr->orig_dev,
           attr->u.vlan_filtering);
  break;
 case 130:
  err = mlxsw_sp_port_attr_mrouter_set(mlxsw_sp_port, trans,
           attr->orig_dev,
           attr->u.mrouter);
  break;
 case 134:
  err = mlxsw_sp_port_mc_disabled_set(mlxsw_sp_port, trans,
          attr->orig_dev,
          attr->u.mc_disabled);
  break;
 case 133:
  err = mlxsw_sp_port_attr_br_mrouter_set(mlxsw_sp_port, trans,
       attr->orig_dev,
       attr->u.mrouter);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 if (switchdev_trans_ph_commit(trans))
  mlxsw_sp_span_respin(mlxsw_sp_port->mlxsw_sp);

 return err;
}
