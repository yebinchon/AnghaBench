
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int netdev; } ;
struct nfp_net {TYPE_1__ dp; } ;


 int nfp_ccm_mbox_clean (struct nfp_net*) ;
 int nfp_net_reconfig_wait_posted (struct nfp_net*) ;
 int unregister_netdev (int ) ;

void nfp_net_clean(struct nfp_net *nn)
{
 if (!nn->dp.netdev)
  return;

 unregister_netdev(nn->dp.netdev);
 nfp_ccm_mbox_clean(nn);
 nfp_net_reconfig_wait_posted(nn);
}
