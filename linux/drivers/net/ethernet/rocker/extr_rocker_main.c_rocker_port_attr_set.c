
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchdev_trans {int dummy; } ;
struct TYPE_2__ {int ageing_time; int brport_flags; int stp_state; } ;
struct switchdev_attr {int id; TYPE_1__ u; } ;
struct rocker_port {int dummy; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;




 struct rocker_port* netdev_priv (struct net_device*) ;
 int rocker_world_port_attr_bridge_ageing_time_set (struct rocker_port*,int ,struct switchdev_trans*) ;
 int rocker_world_port_attr_bridge_flags_set (struct rocker_port*,int ,struct switchdev_trans*) ;
 int rocker_world_port_attr_pre_bridge_flags_set (struct rocker_port*,int ,struct switchdev_trans*) ;
 int rocker_world_port_attr_stp_state_set (struct rocker_port*,int ,struct switchdev_trans*) ;

__attribute__((used)) static int rocker_port_attr_set(struct net_device *dev,
    const struct switchdev_attr *attr,
    struct switchdev_trans *trans)
{
 struct rocker_port *rocker_port = netdev_priv(dev);
 int err = 0;

 switch (attr->id) {
 case 128:
  err = rocker_world_port_attr_stp_state_set(rocker_port,
          attr->u.stp_state,
          trans);
  break;
 case 129:
  err = rocker_world_port_attr_pre_bridge_flags_set(rocker_port,
             attr->u.brport_flags,
             trans);
  break;
 case 130:
  err = rocker_world_port_attr_bridge_flags_set(rocker_port,
             attr->u.brport_flags,
             trans);
  break;
 case 131:
  err = rocker_world_port_attr_bridge_ageing_time_set(rocker_port,
            attr->u.ageing_time,
            trans);
  break;
 default:
  err = -EOPNOTSUPP;
  break;
 }

 return err;
}
