
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_notifier_changeupper_info {int upper_dev; } ;


 unsigned long NETDEV_CHANGEUPPER ;
 unsigned long NETDEV_PRECHANGEUPPER ;
 int netif_is_l3_master (int ) ;

__attribute__((used)) static bool mlxsw_sp_is_vrf_event(unsigned long event, void *ptr)
{
 struct netdev_notifier_changeupper_info *info = ptr;

 if (event != NETDEV_PRECHANGEUPPER && event != NETDEV_CHANGEUPPER)
  return 0;
 return netif_is_l3_master(info->upper_dev);
}
