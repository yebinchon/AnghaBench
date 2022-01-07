
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_phys_item_id {int id_len; int id; } ;
struct net_device {int dummy; } ;
struct bnx2x {int flags; int phys_port_id; } ;


 int EOPNOTSUPP ;
 int HAS_PHYS_PORT_ID ;
 int memcpy (int ,int ,int) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_get_phys_port_id(struct net_device *netdev,
      struct netdev_phys_item_id *ppid)
{
 struct bnx2x *bp = netdev_priv(netdev);

 if (!(bp->flags & HAS_PHYS_PORT_ID))
  return -EOPNOTSUPP;

 ppid->id_len = sizeof(bp->phys_port_id);
 memcpy(ppid->id, bp->phys_port_id, ppid->id_len);

 return 0;
}
