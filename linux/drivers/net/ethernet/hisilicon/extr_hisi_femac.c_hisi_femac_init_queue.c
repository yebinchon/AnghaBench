
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hisi_femac_queue {unsigned int num; scalar_t__ tail; scalar_t__ head; void* dma_phys; void* skb; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* devm_kcalloc (struct device*,unsigned int,int,int ) ;

__attribute__((used)) static int hisi_femac_init_queue(struct device *dev,
     struct hisi_femac_queue *queue,
     unsigned int num)
{
 queue->skb = devm_kcalloc(dev, num, sizeof(struct sk_buff *),
      GFP_KERNEL);
 if (!queue->skb)
  return -ENOMEM;

 queue->dma_phys = devm_kcalloc(dev, num, sizeof(dma_addr_t),
           GFP_KERNEL);
 if (!queue->dma_phys)
  return -ENOMEM;

 queue->num = num;
 queue->head = 0;
 queue->tail = 0;

 return 0;
}
