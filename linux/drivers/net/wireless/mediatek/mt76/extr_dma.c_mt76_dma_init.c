
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int * napi; int * rx_skb; int * q_rx; int napi_dev; } ;


 int ARRAY_SIZE (int *) ;
 int init_dummy_netdev (int *) ;
 int mt76_dma_rx_fill (struct mt76_dev*,int *) ;
 int mt76_dma_rx_poll ;
 int napi_enable (int *) ;
 int netif_napi_add (int *,int *,int ,int) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int
mt76_dma_init(struct mt76_dev *dev)
{
 int i;

 init_dummy_netdev(&dev->napi_dev);

 for (i = 0; i < ARRAY_SIZE(dev->q_rx); i++) {
  netif_napi_add(&dev->napi_dev, &dev->napi[i], mt76_dma_rx_poll,
          64);
  mt76_dma_rx_fill(dev, &dev->q_rx[i]);
  skb_queue_head_init(&dev->rx_skb[i]);
  napi_enable(&dev->napi[i]);
 }

 return 0;
}
