
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct switchdev_notifier_fdb_info {char const* addr; int offloaded; int info; int vid; } ;
struct net_device {int dummy; } ;
typedef enum switchdev_notifier_type { ____Placeholder_switchdev_notifier_type } switchdev_notifier_type ;


 int call_switchdev_notifiers (int,struct net_device*,int *,int *) ;

__attribute__((used)) static void
mlxsw_sp_fdb_call_notifiers(enum switchdev_notifier_type type,
       const char *mac, u16 vid,
       struct net_device *dev, bool offloaded)
{
 struct switchdev_notifier_fdb_info info;

 info.addr = mac;
 info.vid = vid;
 info.offloaded = offloaded;
 call_switchdev_notifiers(type, dev, &info.info, ((void*)0));
}
