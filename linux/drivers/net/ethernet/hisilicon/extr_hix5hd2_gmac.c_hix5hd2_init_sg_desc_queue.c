
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_desc {int dummy; } ;
struct TYPE_2__ {int phys_addr; struct sg_desc* desc; } ;
struct hix5hd2_priv {TYPE_1__ tx_ring; int dev; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TX_DESC_NUM ;
 scalar_t__ dma_alloc_coherent (int ,int,int *,int ) ;

__attribute__((used)) static int hix5hd2_init_sg_desc_queue(struct hix5hd2_priv *priv)
{
 struct sg_desc *desc;
 dma_addr_t phys_addr;

 desc = (struct sg_desc *)dma_alloc_coherent(priv->dev,
    TX_DESC_NUM * sizeof(struct sg_desc),
    &phys_addr, GFP_KERNEL);
 if (!desc)
  return -ENOMEM;

 priv->tx_ring.desc = desc;
 priv->tx_ring.phys_addr = phys_addr;

 return 0;
}
