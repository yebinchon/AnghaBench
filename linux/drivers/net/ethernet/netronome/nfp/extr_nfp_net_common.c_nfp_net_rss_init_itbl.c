
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_rx_rings; } ;
struct nfp_net {TYPE_1__ dp; int * rss_itbl; } ;


 int ethtool_rxfh_indir_default (int,int ) ;

__attribute__((used)) static void nfp_net_rss_init_itbl(struct nfp_net *nn)
{
 int i;

 for (i = 0; i < sizeof(nn->rss_itbl); i++)
  nn->rss_itbl[i] =
   ethtool_rxfh_indir_default(i, nn->dp.num_rx_rings);
}
