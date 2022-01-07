
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct TYPE_2__ {int * entry; int bus; } ;
struct myri10ge_slice_state {int napi; int dev; struct myri10ge_priv* mgp; int * fw_stats; int fw_stats_bus; TYPE_1__ rx_done; } ;
struct myri10ge_priv {int num_slices; int max_intr_slots; int dev; struct myri10ge_slice_state* ss; struct pci_dev* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (int *,size_t,int *,int ) ;
 struct myri10ge_slice_state* kzalloc (size_t,int ) ;
 int myri10ge_free_slices (struct myri10ge_priv*) ;
 int myri10ge_napi_weight ;
 int myri10ge_poll ;
 int netif_napi_add (int ,int *,int ,int ) ;

__attribute__((used)) static int myri10ge_alloc_slices(struct myri10ge_priv *mgp)
{
 struct myri10ge_slice_state *ss;
 struct pci_dev *pdev = mgp->pdev;
 size_t bytes;
 int i;

 bytes = sizeof(*mgp->ss) * mgp->num_slices;
 mgp->ss = kzalloc(bytes, GFP_KERNEL);
 if (mgp->ss == ((void*)0)) {
  return -ENOMEM;
 }

 for (i = 0; i < mgp->num_slices; i++) {
  ss = &mgp->ss[i];
  bytes = mgp->max_intr_slots * sizeof(*ss->rx_done.entry);
  ss->rx_done.entry = dma_alloc_coherent(&pdev->dev, bytes,
             &ss->rx_done.bus,
             GFP_KERNEL);
  if (ss->rx_done.entry == ((void*)0))
   goto abort;
  bytes = sizeof(*ss->fw_stats);
  ss->fw_stats = dma_alloc_coherent(&pdev->dev, bytes,
        &ss->fw_stats_bus,
        GFP_KERNEL);
  if (ss->fw_stats == ((void*)0))
   goto abort;
  ss->mgp = mgp;
  ss->dev = mgp->dev;
  netif_napi_add(ss->dev, &ss->napi, myri10ge_poll,
          myri10ge_napi_weight);
 }
 return 0;
abort:
 myri10ge_free_slices(mgp);
 return -ENOMEM;
}
