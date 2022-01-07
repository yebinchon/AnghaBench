
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct net_device {int dummy; } ;


 int DPAA2_ETH_RX_DIST_CLS ;
 int dpaa2_eth_set_dist_key (struct net_device*,int ,int ) ;

int dpaa2_eth_set_cls(struct net_device *net_dev, u64 flags)
{
 return dpaa2_eth_set_dist_key(net_dev, DPAA2_ETH_RX_DIST_CLS, flags);
}
