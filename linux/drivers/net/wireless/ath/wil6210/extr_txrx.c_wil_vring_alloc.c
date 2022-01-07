
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint ;
struct wil_ring {int size; int * ctx; int pa; TYPE_3__* va; scalar_t__ swtail; scalar_t__ swhead; } ;
struct wil6210_priv {int dma_addr_size; } ;
struct TYPE_5__ {int status; } ;
struct vring_tx_desc {TYPE_2__ dma; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct vring_tx_desc legacy; } ;
struct TYPE_6__ {TYPE_1__ tx; } ;


 int BUILD_BUG_ON (int) ;
 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TX_DMA_STATUS_DU ;
 TYPE_3__* dma_alloc_coherent (struct device*,size_t,int *,int ) ;
 int dma_set_mask_and_coherent (struct device*,int ) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,...) ;
 struct device* wil_to_dev (struct wil6210_priv*) ;

__attribute__((used)) static int wil_vring_alloc(struct wil6210_priv *wil, struct wil_ring *vring)
{
 struct device *dev = wil_to_dev(wil);
 size_t sz = vring->size * sizeof(vring->va[0]);
 uint i;

 wil_dbg_misc(wil, "vring_alloc:\n");

 BUILD_BUG_ON(sizeof(vring->va[0]) != 32);

 vring->swhead = 0;
 vring->swtail = 0;
 vring->ctx = kcalloc(vring->size, sizeof(vring->ctx[0]), GFP_KERNEL);
 if (!vring->ctx) {
  vring->va = ((void*)0);
  return -ENOMEM;
 }
 if (wil->dma_addr_size > 32)
  dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));

 vring->va = dma_alloc_coherent(dev, sz, &vring->pa, GFP_KERNEL);
 if (!vring->va) {
  kfree(vring->ctx);
  vring->ctx = ((void*)0);
  return -ENOMEM;
 }

 if (wil->dma_addr_size > 32)
  dma_set_mask_and_coherent(dev,
       DMA_BIT_MASK(wil->dma_addr_size));





 for (i = 0; i < vring->size; i++) {
  volatile struct vring_tx_desc *_d =
   &vring->va[i].tx.legacy;

  _d->dma.status = TX_DMA_STATUS_DU;
 }

 wil_dbg_misc(wil, "vring[%d] 0x%p:%pad 0x%p\n", vring->size,
       vring->va, &vring->pa, vring->ctx);

 return 0;
}
