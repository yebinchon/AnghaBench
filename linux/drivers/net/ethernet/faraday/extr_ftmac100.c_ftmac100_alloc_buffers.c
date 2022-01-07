
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ftmac100_rxdes {int dummy; } ;
struct ftmac100_descs {int dummy; } ;
struct ftmac100 {TYPE_1__* descs; int descs_dma_addr; int dev; } ;
struct TYPE_2__ {int * txdes; struct ftmac100_rxdes* rxdes; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RX_QUEUE_ENTRIES ;
 int TX_QUEUE_ENTRIES ;
 TYPE_1__* dma_alloc_coherent (int ,int,int *,int ) ;
 scalar_t__ ftmac100_alloc_rx_page (struct ftmac100*,struct ftmac100_rxdes*,int ) ;
 int ftmac100_free_buffers (struct ftmac100*) ;
 int ftmac100_rxdes_set_end_of_ring (struct ftmac100_rxdes*) ;
 int ftmac100_txdes_set_end_of_ring (int *) ;

__attribute__((used)) static int ftmac100_alloc_buffers(struct ftmac100 *priv)
{
 int i;

 priv->descs = dma_alloc_coherent(priv->dev,
      sizeof(struct ftmac100_descs),
      &priv->descs_dma_addr, GFP_KERNEL);
 if (!priv->descs)
  return -ENOMEM;


 ftmac100_rxdes_set_end_of_ring(&priv->descs->rxdes[RX_QUEUE_ENTRIES - 1]);

 for (i = 0; i < RX_QUEUE_ENTRIES; i++) {
  struct ftmac100_rxdes *rxdes = &priv->descs->rxdes[i];

  if (ftmac100_alloc_rx_page(priv, rxdes, GFP_KERNEL))
   goto err;
 }


 ftmac100_txdes_set_end_of_ring(&priv->descs->txdes[TX_QUEUE_ENTRIES - 1]);
 return 0;

err:
 ftmac100_free_buffers(priv);
 return -ENOMEM;
}
