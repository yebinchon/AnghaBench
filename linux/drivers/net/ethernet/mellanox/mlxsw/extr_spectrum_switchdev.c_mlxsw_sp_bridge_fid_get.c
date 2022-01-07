
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {TYPE_1__* ops; } ;
struct mlxsw_sp {int bridge; } ;
struct TYPE_2__ {struct mlxsw_sp_fid* (* fid_get ) (struct mlxsw_sp_bridge_device*,int ,struct netlink_ext_ack*) ;} ;


 int EINVAL ;
 struct mlxsw_sp_fid* ERR_PTR (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct mlxsw_sp_bridge_device* mlxsw_sp_bridge_device_find (int ,struct net_device const*) ;
 struct mlxsw_sp_fid* stub1 (struct mlxsw_sp_bridge_device*,int ,struct netlink_ext_ack*) ;

struct mlxsw_sp_fid *mlxsw_sp_bridge_fid_get(struct mlxsw_sp *mlxsw_sp,
          const struct net_device *br_dev,
          u16 vid,
          struct netlink_ext_ack *extack)
{
 struct mlxsw_sp_bridge_device *bridge_device;

 bridge_device = mlxsw_sp_bridge_device_find(mlxsw_sp->bridge, br_dev);
 if (WARN_ON(!bridge_device))
  return ERR_PTR(-EINVAL);

 return bridge_device->ops->fid_get(bridge_device, vid, extack);
}
