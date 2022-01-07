
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_vrf {int tb_id; } ;
struct net_device {int dummy; } ;


 struct net_vrf* netdev_priv (struct net_device const*) ;

__attribute__((used)) static u32 vrf_fib_table(const struct net_device *dev)
{
 struct net_vrf *vrf = netdev_priv(dev);

 return vrf->tb_id;
}
