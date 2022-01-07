
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jme_ring {unsigned long dmaalloc; int * bufinf; scalar_t__ dma; int * desc; scalar_t__ alloc; int nr_free; int next_to_clean; scalar_t__ next_to_use; } ;
struct jme_buffer_info {int dummy; } ;
struct jme_adapter {int tx_ring_size; TYPE_1__* pdev; struct jme_ring* txring; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ALIGN (unsigned long,int ) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int RING_DESC_ALIGN ;
 int TX_RING_ALLOC_SIZE (int ) ;
 int atomic_set (int *,int ) ;
 scalar_t__ dma_alloc_coherent (int *,int ,unsigned long*,int ) ;
 int dma_free_coherent (int *,int ,scalar_t__,unsigned long) ;
 int * kcalloc (int ,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
jme_setup_tx_resources(struct jme_adapter *jme)
{
 struct jme_ring *txring = &(jme->txring[0]);

 txring->alloc = dma_alloc_coherent(&(jme->pdev->dev),
       TX_RING_ALLOC_SIZE(jme->tx_ring_size),
       &(txring->dmaalloc),
       GFP_ATOMIC);

 if (!txring->alloc)
  goto err_set_null;




 txring->desc = (void *)ALIGN((unsigned long)(txring->alloc),
      RING_DESC_ALIGN);
 txring->dma = ALIGN(txring->dmaalloc, RING_DESC_ALIGN);
 txring->next_to_use = 0;
 atomic_set(&txring->next_to_clean, 0);
 atomic_set(&txring->nr_free, jme->tx_ring_size);

 txring->bufinf = kcalloc(jme->tx_ring_size,
      sizeof(struct jme_buffer_info),
      GFP_ATOMIC);
 if (unlikely(!(txring->bufinf)))
  goto err_free_txring;

 return 0;

err_free_txring:
 dma_free_coherent(&(jme->pdev->dev),
     TX_RING_ALLOC_SIZE(jme->tx_ring_size),
     txring->alloc,
     txring->dmaalloc);

err_set_null:
 txring->desc = ((void*)0);
 txring->dmaalloc = 0;
 txring->dma = 0;
 txring->bufinf = ((void*)0);

 return -ENOMEM;
}
