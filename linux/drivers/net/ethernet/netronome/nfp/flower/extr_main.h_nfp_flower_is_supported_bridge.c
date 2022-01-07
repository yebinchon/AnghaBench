
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netif_is_ovs_master (struct net_device*) ;

__attribute__((used)) static inline bool nfp_flower_is_supported_bridge(struct net_device *netdev)
{
 return netif_is_ovs_master(netdev);
}
