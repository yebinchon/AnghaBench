
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_world_ops {int (* port_ev_mac_vlan_seen ) (struct rocker_port*,unsigned char const*,int ) ;} ;
struct rocker_port {TYPE_1__* rocker; } ;
typedef int __be16 ;
struct TYPE_2__ {struct rocker_world_ops* wops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct rocker_port*,unsigned char const*,int ) ;

__attribute__((used)) static int rocker_world_port_ev_mac_vlan_seen(struct rocker_port *rocker_port,
           const unsigned char *addr,
           __be16 vlan_id)
{
 struct rocker_world_ops *wops = rocker_port->rocker->wops;

 if (!wops->port_ev_mac_vlan_seen)
  return -EOPNOTSUPP;
 return wops->port_ev_mac_vlan_seen(rocker_port, addr, vlan_id);
}
