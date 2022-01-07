
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct mlxsw_core {unsigned int max_ports; TYPE_1__* driver; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int (* port_split ) (struct mlxsw_core*,unsigned int,unsigned int,struct netlink_ext_ack*) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 struct mlxsw_core* devlink_priv (struct devlink*) ;
 int stub1 (struct mlxsw_core*,unsigned int,unsigned int,struct netlink_ext_ack*) ;

__attribute__((used)) static int mlxsw_devlink_port_split(struct devlink *devlink,
        unsigned int port_index,
        unsigned int count,
        struct netlink_ext_ack *extack)
{
 struct mlxsw_core *mlxsw_core = devlink_priv(devlink);

 if (port_index >= mlxsw_core->max_ports) {
  NL_SET_ERR_MSG_MOD(extack, "Port index exceeds maximum number of ports");
  return -EINVAL;
 }
 if (!mlxsw_core->driver->port_split)
  return -EOPNOTSUPP;
 return mlxsw_core->driver->port_split(mlxsw_core, port_index, count,
           extack);
}
