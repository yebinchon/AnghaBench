
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* va; int pa; } ;
struct wil_ring {int size; int * ctx; int * va; int pa; scalar_t__ is_rx; TYPE_1__ edma_rx_swtail; scalar_t__ swtail; scalar_t__ swhead; } ;
struct wil6210_priv {int dummy; } ;
struct device {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (struct device*,size_t,int *,int ) ;
 int dma_free_coherent (struct device*,int,void*,int ) ;
 int * kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int wil_dbg_misc (struct wil6210_priv*,char*,...) ;
 struct device* wil_to_dev (struct wil6210_priv*) ;

__attribute__((used)) static int wil_ring_alloc_desc_ring(struct wil6210_priv *wil,
        struct wil_ring *ring)
{
 struct device *dev = wil_to_dev(wil);
 size_t sz = ring->size * sizeof(ring->va[0]);

 wil_dbg_misc(wil, "alloc_desc_ring:\n");

 BUILD_BUG_ON(sizeof(ring->va[0]) != 32);

 ring->swhead = 0;
 ring->swtail = 0;
 ring->ctx = kcalloc(ring->size, sizeof(ring->ctx[0]), GFP_KERNEL);
 if (!ring->ctx)
  goto err;

 ring->va = dma_alloc_coherent(dev, sz, &ring->pa, GFP_KERNEL);
 if (!ring->va)
  goto err_free_ctx;

 if (ring->is_rx) {
  sz = sizeof(*ring->edma_rx_swtail.va);
  ring->edma_rx_swtail.va =
   dma_alloc_coherent(dev, sz, &ring->edma_rx_swtail.pa,
        GFP_KERNEL);
  if (!ring->edma_rx_swtail.va)
   goto err_free_va;
 }

 wil_dbg_misc(wil, "%s ring[%d] 0x%p:%pad 0x%p\n",
       ring->is_rx ? "RX" : "TX",
       ring->size, ring->va, &ring->pa, ring->ctx);

 return 0;
err_free_va:
 dma_free_coherent(dev, ring->size * sizeof(ring->va[0]),
     (void *)ring->va, ring->pa);
 ring->va = ((void*)0);
err_free_ctx:
 kfree(ring->ctx);
 ring->ctx = ((void*)0);
err:
 return -ENOMEM;
}
