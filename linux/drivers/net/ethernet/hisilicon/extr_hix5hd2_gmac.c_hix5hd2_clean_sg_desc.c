
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct sg_desc {TYPE_2__* frags; int linear_len; int linear_addr; } ;
struct TYPE_4__ {struct sg_desc* desc; } ;
struct hix5hd2_priv {int dev; TYPE_1__ tx_ring; } ;
typedef void* dma_addr_t ;
struct TYPE_6__ {int nr_frags; } ;
struct TYPE_5__ {int size; int addr; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_page (int ,void*,int,int ) ;
 int dma_unmap_single (int ,void*,int,int ) ;
 void* le32_to_cpu (int ) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void hix5hd2_clean_sg_desc(struct hix5hd2_priv *priv,
      struct sk_buff *skb, u32 pos)
{
 struct sg_desc *desc;
 dma_addr_t addr;
 u32 len;
 int i;

 desc = priv->tx_ring.desc + pos;

 addr = le32_to_cpu(desc->linear_addr);
 len = le32_to_cpu(desc->linear_len);
 dma_unmap_single(priv->dev, addr, len, DMA_TO_DEVICE);

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  addr = le32_to_cpu(desc->frags[i].addr);
  len = le32_to_cpu(desc->frags[i].size);
  dma_unmap_page(priv->dev, addr, len, DMA_TO_DEVICE);
 }
}
