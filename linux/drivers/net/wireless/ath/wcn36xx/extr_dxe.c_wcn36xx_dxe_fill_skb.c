
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_dxe_desc {int dst_addr_l; } ;
struct wcn36xx_dxe_ctl {struct sk_buff* skb; struct wcn36xx_dxe_desc* desc; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
typedef int gfp_t ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int WCN36XX_PKT_SIZE ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int dev_err (struct device*,char*) ;
 int dma_map_single (struct device*,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int wcn36xx_dxe_fill_skb(struct device *dev,
    struct wcn36xx_dxe_ctl *ctl,
    gfp_t gfp)
{
 struct wcn36xx_dxe_desc *dxe = ctl->desc;
 struct sk_buff *skb;

 skb = alloc_skb(WCN36XX_PKT_SIZE, gfp);
 if (skb == ((void*)0))
  return -ENOMEM;

 dxe->dst_addr_l = dma_map_single(dev,
      skb_tail_pointer(skb),
      WCN36XX_PKT_SIZE,
      DMA_FROM_DEVICE);
 if (dma_mapping_error(dev, dxe->dst_addr_l)) {
  dev_err(dev, "unable to map skb\n");
  kfree_skb(skb);
  return -ENOMEM;
 }
 ctl->skb = skb;

 return 0;
}
