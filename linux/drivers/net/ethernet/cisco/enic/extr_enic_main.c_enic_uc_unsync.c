
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct enic {int uc_count; } ;


 int enic_dev_del_addr (struct enic*,int const*) ;
 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int enic_uc_unsync(struct net_device *netdev, const u8 *uc_addr)
{
 struct enic *enic = netdev_priv(netdev);

 enic_dev_del_addr(enic, uc_addr);
 enic->uc_count--;

 return 0;
}
