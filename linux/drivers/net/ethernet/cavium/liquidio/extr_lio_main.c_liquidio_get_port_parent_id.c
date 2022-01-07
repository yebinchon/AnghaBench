
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_device {scalar_t__ eswitch_mode; } ;
struct netdev_phys_item_id {int id; int id_len; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int hw_addr; } ;
struct lio {TYPE_1__ linfo; struct octeon_device* oct_dev; } ;


 scalar_t__ DEVLINK_ESWITCH_MODE_SWITCHDEV ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 struct lio* GET_LIO (struct net_device*) ;
 int ether_addr_copy (int ,void*) ;

__attribute__((used)) static int
liquidio_get_port_parent_id(struct net_device *dev,
       struct netdev_phys_item_id *ppid)
{
 struct lio *lio = GET_LIO(dev);
 struct octeon_device *oct = lio->oct_dev;

 if (oct->eswitch_mode != DEVLINK_ESWITCH_MODE_SWITCHDEV)
  return -EOPNOTSUPP;

 ppid->id_len = ETH_ALEN;
 ether_addr_copy(ppid->id, (void *)&lio->linfo.hw_addr + 2);

 return 0;
}
