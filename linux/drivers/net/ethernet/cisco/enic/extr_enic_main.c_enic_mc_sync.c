
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct enic {scalar_t__ mc_count; } ;


 scalar_t__ ENIC_MULTICAST_PERFECT_FILTERS ;
 int ENOSPC ;
 int enic_dev_add_addr (struct enic*,int const*) ;
 unsigned int netdev_mc_count (struct net_device*) ;
 struct enic* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,scalar_t__,unsigned int) ;

__attribute__((used)) static int enic_mc_sync(struct net_device *netdev, const u8 *mc_addr)
{
 struct enic *enic = netdev_priv(netdev);

 if (enic->mc_count == ENIC_MULTICAST_PERFECT_FILTERS) {
  unsigned int mc_count = netdev_mc_count(netdev);

  netdev_warn(netdev, "Registering only %d out of %d multicast addresses\n",
       ENIC_MULTICAST_PERFECT_FILTERS, mc_count);

  return -ENOSPC;
 }

 enic_dev_add_addr(enic, mc_addr);
 enic->mc_count++;

 return 0;
}
