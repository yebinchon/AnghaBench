
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int * entry; int bus; } ;
struct myri10ge_slice_state {int napi; int * fw_stats; int fw_stats_bus; TYPE_1__ rx_done; } ;
struct myri10ge_priv {int num_slices; int max_intr_slots; struct myri10ge_slice_state* ss; struct pci_dev* pdev; } ;


 int dma_free_coherent (int *,size_t,int *,int ) ;
 int kfree (struct myri10ge_slice_state*) ;
 int napi_hash_del (int *) ;
 int netif_napi_del (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void myri10ge_free_slices(struct myri10ge_priv *mgp)
{
 struct myri10ge_slice_state *ss;
 struct pci_dev *pdev = mgp->pdev;
 size_t bytes;
 int i;

 if (mgp->ss == ((void*)0))
  return;

 for (i = 0; i < mgp->num_slices; i++) {
  ss = &mgp->ss[i];
  if (ss->rx_done.entry != ((void*)0)) {
   bytes = mgp->max_intr_slots *
       sizeof(*ss->rx_done.entry);
   dma_free_coherent(&pdev->dev, bytes,
       ss->rx_done.entry, ss->rx_done.bus);
   ss->rx_done.entry = ((void*)0);
  }
  if (ss->fw_stats != ((void*)0)) {
   bytes = sizeof(*ss->fw_stats);
   dma_free_coherent(&pdev->dev, bytes,
       ss->fw_stats, ss->fw_stats_bus);
   ss->fw_stats = ((void*)0);
  }
  napi_hash_del(&ss->napi);
  netif_napi_del(&ss->napi);
 }

 synchronize_rcu();
 kfree(mgp->ss);
 mgp->ss = ((void*)0);
}
