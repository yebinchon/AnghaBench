
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;


 int ionic_lif_addr (int ,int const*,int) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int ionic_addr_add(struct net_device *netdev, const u8 *addr)
{
 return ionic_lif_addr(netdev_priv(netdev), addr, 1);
}
