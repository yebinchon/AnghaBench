
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int slaves; } ;
struct cpsw_common {int rx_ch_num; int ** page_pool; TYPE_2__* slaves; TYPE_1__ data; } ;
struct TYPE_4__ {struct net_device* ndev; } ;


 int cpsw_ndev_destroy_xdp_rxq (int ,int) ;
 int netdev_priv (struct net_device*) ;
 int page_pool_destroy (int *) ;

void cpsw_destroy_xdp_rxqs(struct cpsw_common *cpsw)
{
 struct net_device *ndev;
 int i, ch;

 for (ch = 0; ch < cpsw->rx_ch_num; ch++) {
  for (i = 0; i < cpsw->data.slaves; i++) {
   ndev = cpsw->slaves[i].ndev;
   if (!ndev)
    continue;

   cpsw_ndev_destroy_xdp_rxq(netdev_priv(ndev), ch);
  }

  page_pool_destroy(cpsw->page_pool[ch]);
  cpsw->page_pool[ch] = ((void*)0);
 }
}
