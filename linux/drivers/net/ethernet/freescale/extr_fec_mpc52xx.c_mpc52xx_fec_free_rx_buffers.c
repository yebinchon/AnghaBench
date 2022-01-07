
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct bcom_task {int dummy; } ;
struct bcom_fec_bd {int skb_pa; } ;
struct bcom_bd {int dummy; } ;


 int DMA_FROM_DEVICE ;
 int bcom_queue_empty (struct bcom_task*) ;
 struct sk_buff* bcom_retrieve_buffer (struct bcom_task*,int *,struct bcom_bd**) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static void mpc52xx_fec_free_rx_buffers(struct net_device *dev, struct bcom_task *s)
{
 while (!bcom_queue_empty(s)) {
  struct bcom_fec_bd *bd;
  struct sk_buff *skb;

  skb = bcom_retrieve_buffer(s, ((void*)0), (struct bcom_bd **)&bd);
  dma_unmap_single(dev->dev.parent, bd->skb_pa, skb->len,
     DMA_FROM_DEVICE);
  kfree_skb(skb);
 }
}
