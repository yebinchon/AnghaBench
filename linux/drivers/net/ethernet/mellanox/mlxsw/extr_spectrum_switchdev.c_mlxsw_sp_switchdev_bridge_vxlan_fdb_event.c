
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union mlxsw_sp_l3addr {int dummy; } mlxsw_sp_l3addr ;
struct switchdev_notifier_vxlan_fdb_info {int offloaded; int info; int eth_addr; int remote_ip; } ;
struct switchdev_notifier_fdb_info {int vid; int addr; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp_switchdev_event_work {int event; struct switchdev_notifier_fdb_info fdb_info; struct net_device* dev; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;
typedef int __be32 ;




 int SWITCHDEV_FDB_OFFLOADED ;
 int SWITCHDEV_VXLAN_FDB_OFFLOADED ;
 int call_switchdev_notifiers (int ,struct net_device*,int *,int *) ;
 int mlxsw_sp_fdb_call_notifiers (int ,int ,int ,struct net_device*,int) ;
 int mlxsw_sp_fid_index (struct mlxsw_sp_fid*) ;
 int mlxsw_sp_port_fdb_tunnel_uc_op (struct mlxsw_sp*,int ,int ,int,union mlxsw_sp_l3addr*,int,int) ;
 int mlxsw_sp_switchdev_vxlan_addr_convert (int *,int*,union mlxsw_sp_l3addr*) ;
 int vxlan_fdb_find_uc (struct net_device*,int ,int ,struct switchdev_notifier_vxlan_fdb_info*) ;

__attribute__((used)) static void
mlxsw_sp_switchdev_bridge_vxlan_fdb_event(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_switchdev_event_work *
       switchdev_work,
       struct mlxsw_sp_fid *fid, __be32 vni)
{
 struct switchdev_notifier_vxlan_fdb_info vxlan_fdb_info;
 struct switchdev_notifier_fdb_info *fdb_info;
 struct net_device *dev = switchdev_work->dev;
 enum mlxsw_sp_l3proto proto;
 union mlxsw_sp_l3addr addr;
 int err;

 fdb_info = &switchdev_work->fdb_info;
 err = vxlan_fdb_find_uc(dev, fdb_info->addr, vni, &vxlan_fdb_info);
 if (err)
  return;

 mlxsw_sp_switchdev_vxlan_addr_convert(&vxlan_fdb_info.remote_ip,
           &proto, &addr);

 switch (switchdev_work->event) {
 case 129:
  err = mlxsw_sp_port_fdb_tunnel_uc_op(mlxsw_sp,
           vxlan_fdb_info.eth_addr,
           mlxsw_sp_fid_index(fid),
           proto, &addr, 1, 0);
  if (err)
   return;
  vxlan_fdb_info.offloaded = 1;
  call_switchdev_notifiers(SWITCHDEV_VXLAN_FDB_OFFLOADED, dev,
      &vxlan_fdb_info.info, ((void*)0));
  mlxsw_sp_fdb_call_notifiers(SWITCHDEV_FDB_OFFLOADED,
         vxlan_fdb_info.eth_addr,
         fdb_info->vid, dev, 1);
  break;
 case 128:
  err = mlxsw_sp_port_fdb_tunnel_uc_op(mlxsw_sp,
           vxlan_fdb_info.eth_addr,
           mlxsw_sp_fid_index(fid),
           proto, &addr, 0,
           0);
  vxlan_fdb_info.offloaded = 0;
  call_switchdev_notifiers(SWITCHDEV_VXLAN_FDB_OFFLOADED, dev,
      &vxlan_fdb_info.info, ((void*)0));
  break;
 }
}
