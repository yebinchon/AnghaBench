
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct switchdev_trans {int dummy; } ;
struct rocker_world_ops {int (* port_attr_stp_state_set ) (struct rocker_port*,int ) ;} ;
struct rocker_port {TYPE_1__* rocker; } ;
struct TYPE_2__ {struct rocker_world_ops* wops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct rocker_port*,int ) ;
 scalar_t__ switchdev_trans_ph_prepare (struct switchdev_trans*) ;

__attribute__((used)) static int rocker_world_port_attr_stp_state_set(struct rocker_port *rocker_port,
      u8 state,
      struct switchdev_trans *trans)
{
 struct rocker_world_ops *wops = rocker_port->rocker->wops;

 if (!wops->port_attr_stp_state_set)
  return -EOPNOTSUPP;

 if (switchdev_trans_ph_prepare(trans))
  return 0;

 return wops->port_attr_stp_state_set(rocker_port, state);
}
