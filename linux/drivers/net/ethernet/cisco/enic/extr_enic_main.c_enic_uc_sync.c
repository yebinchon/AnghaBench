
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct enic {scalar_t__ uc_count; } ;


 scalar_t__ ENIC_UNICAST_PERFECT_FILTERS ;
 int ENOSPC ;
 int enic_dev_add_addr (struct enic*,int const*) ;
 struct enic* netdev_priv (struct net_device*) ;
 unsigned int netdev_uc_count (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,scalar_t__,unsigned int) ;

__attribute__((used)) static int enic_uc_sync(struct net_device *netdev, const u8 *uc_addr)
{
 struct enic *enic = netdev_priv(netdev);

 if (enic->uc_count == ENIC_UNICAST_PERFECT_FILTERS) {
  unsigned int uc_count = netdev_uc_count(netdev);

  netdev_warn(netdev, "Registering only %d out of %d unicast addresses\n",
       ENIC_UNICAST_PERFECT_FILTERS, uc_count);

  return -ENOSPC;
 }

 enic_dev_add_addr(enic, uc_addr);
 enic->uc_count++;

 return 0;
}
