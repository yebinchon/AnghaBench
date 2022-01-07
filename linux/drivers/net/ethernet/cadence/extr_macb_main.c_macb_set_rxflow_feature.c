
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macb {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_NTUPLE ;
 int gem_enable_flow_filters (struct macb*,int) ;
 int macb_is_gem (struct macb*) ;

__attribute__((used)) static inline void macb_set_rxflow_feature(struct macb *bp,
        netdev_features_t features)
{
 if (!macb_is_gem(bp))
  return;

 gem_enable_flow_filters(bp, !!(features & NETIF_F_NTUPLE));
}
