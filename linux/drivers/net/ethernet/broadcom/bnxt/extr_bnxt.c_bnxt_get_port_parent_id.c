
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_phys_item_id {int id_len; int id; } ;
struct net_device {int dummy; } ;
struct bnxt {scalar_t__ eswitch_mode; int switch_id; } ;


 int BNXT_PF (struct bnxt*) ;
 scalar_t__ DEVLINK_ESWITCH_MODE_SWITCHDEV ;
 int EOPNOTSUPP ;
 int memcpy (int ,int ,int) ;
 struct bnxt* netdev_priv (struct net_device*) ;

int bnxt_get_port_parent_id(struct net_device *dev,
       struct netdev_phys_item_id *ppid)
{
 struct bnxt *bp = netdev_priv(dev);

 if (bp->eswitch_mode != DEVLINK_ESWITCH_MODE_SWITCHDEV)
  return -EOPNOTSUPP;


 if (!BNXT_PF(bp))
  return -EOPNOTSUPP;

 ppid->id_len = sizeof(bp->switch_id);
 memcpy(ppid->id, bp->switch_id, ppid->id_len);

 return 0;
}
