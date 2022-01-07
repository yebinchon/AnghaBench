
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int * q_rx; int * napi; int * q_tx; int tx_napi; } ;


 int ARRAY_SIZE (int *) ;
 int mt76_dma_rx_cleanup (struct mt76_dev*,int *) ;
 int mt76_dma_tx_cleanup (struct mt76_dev*,int,int) ;
 int netif_napi_del (int *) ;

void mt76_dma_cleanup(struct mt76_dev *dev)
{
 int i;

 netif_napi_del(&dev->tx_napi);
 for (i = 0; i < ARRAY_SIZE(dev->q_tx); i++)
  mt76_dma_tx_cleanup(dev, i, 1);

 for (i = 0; i < ARRAY_SIZE(dev->q_rx); i++) {
  netif_napi_del(&dev->napi[i]);
  mt76_dma_rx_cleanup(dev, &dev->q_rx[i]);
 }
}
