
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netsec_priv {int dev; struct netsec_desc_ring* desc_ring; } ;
struct netsec_desc_ring {int * desc; int * vaddr; int desc_dma; } ;


 int DESC_NUM ;
 int DESC_SZ ;
 int dma_free_coherent (int ,int,int *,int ) ;
 int kfree (int *) ;

__attribute__((used)) static void netsec_free_dring(struct netsec_priv *priv, int id)
{
 struct netsec_desc_ring *dring = &priv->desc_ring[id];

 if (dring->vaddr) {
  dma_free_coherent(priv->dev, DESC_SZ * DESC_NUM,
      dring->vaddr, dring->desc_dma);
  dring->vaddr = ((void*)0);
 }

 kfree(dring->desc);
 dring->desc = ((void*)0);
}
