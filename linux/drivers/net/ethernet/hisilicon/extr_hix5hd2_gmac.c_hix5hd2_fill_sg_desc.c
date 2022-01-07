
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct sg_desc {TYPE_2__* frags; void* linear_len; void* linear_addr; void* total_len; } ;
struct TYPE_4__ {struct sg_desc* desc; } ;
struct hix5hd2_priv {int dev; TYPE_1__ tx_ring; } ;
typedef int skb_frag_t ;
typedef int dma_addr_t ;
struct TYPE_6__ {int nr_frags; int * frags; } ;
struct TYPE_5__ {void* size; void* addr; } ;


 int DMA_TO_DEVICE ;
 int EINVAL ;
 void* cpu_to_le32 (int) ;
 int dma_map_single (int ,int ,int,int ) ;
 int dma_mapping_error (int ,int) ;
 int skb_frag_dma_map (int ,int *,int ,int,int ) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hix5hd2_fill_sg_desc(struct hix5hd2_priv *priv,
    struct sk_buff *skb, u32 pos)
{
 struct sg_desc *desc;
 dma_addr_t addr;
 int ret;
 int i;

 desc = priv->tx_ring.desc + pos;

 desc->total_len = cpu_to_le32(skb->len);
 addr = dma_map_single(priv->dev, skb->data, skb_headlen(skb),
         DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(priv->dev, addr)))
  return -EINVAL;
 desc->linear_addr = cpu_to_le32(addr);
 desc->linear_len = cpu_to_le32(skb_headlen(skb));

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
  int len = skb_frag_size(frag);

  addr = skb_frag_dma_map(priv->dev, frag, 0, len, DMA_TO_DEVICE);
  ret = dma_mapping_error(priv->dev, addr);
  if (unlikely(ret))
   return -EINVAL;
  desc->frags[i].addr = cpu_to_le32(addr);
  desc->frags[i].size = cpu_to_le32(len);
 }

 return 0;
}
