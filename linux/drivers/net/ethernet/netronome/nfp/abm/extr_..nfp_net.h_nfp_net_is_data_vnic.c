
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int netdev; } ;
struct nfp_net {TYPE_1__ dp; scalar_t__ port; } ;


 int WARN_ON_ONCE (int) ;

__attribute__((used)) static inline bool nfp_net_is_data_vnic(struct nfp_net *nn)
{
 WARN_ON_ONCE(!nn->dp.netdev && nn->port);
 return !!nn->dp.netdev;
}
