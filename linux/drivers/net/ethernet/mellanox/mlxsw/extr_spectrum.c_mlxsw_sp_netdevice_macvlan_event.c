
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct netdev_notifier_changeupper_info {int info; } ;
struct net_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int EOPNOTSUPP ;
 unsigned long NETDEV_PRECHANGEUPPER ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 struct mlxsw_sp* mlxsw_sp_lower_get (struct net_device*) ;
 struct netlink_ext_ack* netdev_notifier_info_to_extack (int *) ;

__attribute__((used)) static int mlxsw_sp_netdevice_macvlan_event(struct net_device *macvlan_dev,
         unsigned long event, void *ptr)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_sp_lower_get(macvlan_dev);
 struct netdev_notifier_changeupper_info *info = ptr;
 struct netlink_ext_ack *extack;

 if (!mlxsw_sp || event != NETDEV_PRECHANGEUPPER)
  return 0;

 extack = netdev_notifier_info_to_extack(&info->info);


 NL_SET_ERR_MSG_MOD(extack, "Unknown upper device type");

 return -EOPNOTSUPP;
}
