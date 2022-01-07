
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_notifier_fdb_info {int offloaded; int info; int vid; int addr; } ;
struct rocker_port {int dev; } ;


 int SWITCHDEV_FDB_OFFLOADED ;
 int call_switchdev_notifiers (int ,int ,int *,int *) ;

__attribute__((used)) static void
rocker_fdb_offload_notify(struct rocker_port *rocker_port,
     struct switchdev_notifier_fdb_info *recv_info)
{
 struct switchdev_notifier_fdb_info info;

 info.addr = recv_info->addr;
 info.vid = recv_info->vid;
 info.offloaded = 1;
 call_switchdev_notifiers(SWITCHDEV_FDB_OFFLOADED,
     rocker_port->dev, &info.info, ((void*)0));
}
