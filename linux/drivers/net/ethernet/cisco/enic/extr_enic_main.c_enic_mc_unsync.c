
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct enic {int mc_count; } ;


 int enic_dev_del_addr (struct enic*,int const*) ;
 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enic_mc_unsync(struct net_device *netdev, const u8 *mc_addr)
{
 struct enic *enic = netdev_priv(netdev);

 enic_dev_del_addr(enic, mc_addr);
 enic->mc_count--;

 return 0;
}
