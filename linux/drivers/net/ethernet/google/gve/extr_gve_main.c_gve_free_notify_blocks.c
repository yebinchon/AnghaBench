
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gve_priv {int num_ntfy_blks; size_t mgmt_msix_idx; TYPE_2__* msix_vectors; TYPE_1__* pdev; struct gve_priv* ntfy_blocks; int ntfy_block_bus; } ;
struct gve_notify_block {int num_ntfy_blks; size_t mgmt_msix_idx; TYPE_2__* msix_vectors; TYPE_1__* pdev; struct gve_notify_block* ntfy_blocks; int ntfy_block_bus; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int *,int,struct gve_priv*,int ) ;
 int free_irq (int ,struct gve_priv*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int kvfree (TYPE_2__*) ;
 int pci_disable_msix (TYPE_1__*) ;

__attribute__((used)) static void gve_free_notify_blocks(struct gve_priv *priv)
{
 int i;


 for (i = 0; i < priv->num_ntfy_blks; i++) {
  struct gve_notify_block *block = &priv->ntfy_blocks[i];
  int msix_idx = i;

  irq_set_affinity_hint(priv->msix_vectors[msix_idx].vector,
          ((void*)0));
  free_irq(priv->msix_vectors[msix_idx].vector, block);
 }
 dma_free_coherent(&priv->pdev->dev,
     priv->num_ntfy_blks * sizeof(*priv->ntfy_blocks),
     priv->ntfy_blocks, priv->ntfy_block_bus);
 priv->ntfy_blocks = ((void*)0);
 free_irq(priv->msix_vectors[priv->mgmt_msix_idx].vector, priv);
 pci_disable_msix(priv->pdev);
 kvfree(priv->msix_vectors);
 priv->msix_vectors = ((void*)0);
}
