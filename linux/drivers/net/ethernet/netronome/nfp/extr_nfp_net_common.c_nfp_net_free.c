
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ netdev; } ;
struct nfp_net {TYPE_1__ dp; scalar_t__ reconfig_posted; int reconfig_timer; } ;


 int WARN_ON (int) ;
 int free_netdev (scalar_t__) ;
 int nfp_ccm_mbox_free (struct nfp_net*) ;
 scalar_t__ timer_pending (int *) ;
 int vfree (struct nfp_net*) ;

void nfp_net_free(struct nfp_net *nn)
{
 WARN_ON(timer_pending(&nn->reconfig_timer) || nn->reconfig_posted);
 nfp_ccm_mbox_free(nn);

 if (nn->dp.netdev)
  free_netdev(nn->dp.netdev);
 else
  vfree(nn);
}
