
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rq; int xq; int dead; } ;
struct ppp {int dev; int xmit_recursion; int xmit_pending; int * active_filter; int * pass_filter; int mrq; TYPE_1__ file; int * vj; scalar_t__ n_channels; } ;


 int atomic_dec (int *) ;
 int bpf_prog_destroy (int *) ;
 int free_netdev (int ) ;
 int free_percpu (int ) ;
 int kfree_skb (int ) ;
 int netdev_err (int ,char*,struct ppp*,int ,scalar_t__) ;
 int ppp_ccp_closed (struct ppp*) ;
 int ppp_unit_count ;
 int skb_queue_purge (int *) ;
 int slhc_free (int *) ;

__attribute__((used)) static void ppp_destroy_interface(struct ppp *ppp)
{
 atomic_dec(&ppp_unit_count);

 if (!ppp->file.dead || ppp->n_channels) {

  netdev_err(ppp->dev, "ppp: destroying ppp struct %p "
      "but dead=%d n_channels=%d !\n",
      ppp, ppp->file.dead, ppp->n_channels);
  return;
 }

 ppp_ccp_closed(ppp);
 if (ppp->vj) {
  slhc_free(ppp->vj);
  ppp->vj = ((void*)0);
 }
 skb_queue_purge(&ppp->file.xq);
 skb_queue_purge(&ppp->file.rq);
 kfree_skb(ppp->xmit_pending);
 free_percpu(ppp->xmit_recursion);

 free_netdev(ppp->dev);
}
