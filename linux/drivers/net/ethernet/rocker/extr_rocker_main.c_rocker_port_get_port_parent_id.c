
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rocker_port {struct rocker* rocker; } ;
struct TYPE_2__ {int id; } ;
struct rocker {TYPE_1__ hw; } ;
struct netdev_phys_item_id {int id_len; int id; } ;
struct net_device {int dummy; } ;


 int memcpy (int *,int *,int) ;
 struct rocker_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static int rocker_port_get_port_parent_id(struct net_device *dev,
       struct netdev_phys_item_id *ppid)
{
 const struct rocker_port *rocker_port = netdev_priv(dev);
 const struct rocker *rocker = rocker_port->rocker;

 ppid->id_len = sizeof(rocker->hw.id);
 memcpy(&ppid->id, &rocker->hw.id, ppid->id_len);

 return 0;
}
