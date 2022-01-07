
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_desc {int dummy; } ;
struct TYPE_2__ {int * desc; int phys_addr; } ;
struct hix5hd2_priv {TYPE_1__ tx_ring; int dev; } ;


 int TX_DESC_NUM ;
 int dma_free_coherent (int ,int,int *,int ) ;

__attribute__((used)) static void hix5hd2_destroy_sg_desc_queue(struct hix5hd2_priv *priv)
{
 if (priv->tx_ring.desc) {
  dma_free_coherent(priv->dev,
      TX_DESC_NUM * sizeof(struct sg_desc),
      priv->tx_ring.desc, priv->tx_ring.phys_addr);
  priv->tx_ring.desc = ((void*)0);
 }
}
