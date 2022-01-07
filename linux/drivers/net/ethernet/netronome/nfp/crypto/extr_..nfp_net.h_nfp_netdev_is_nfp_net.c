
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; } ;


 int nfp_net_netdev_ops ;

__attribute__((used)) static inline bool nfp_netdev_is_nfp_net(struct net_device *netdev)
{
 return netdev->netdev_ops == &nfp_net_netdev_ops;
}
