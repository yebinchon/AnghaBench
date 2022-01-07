
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tx_desc ;
struct tsi108_prv_data {int txhead; int txtail; int rxtail; int txdma; int txring; TYPE_1__* pdev; int rxdma; int rxring; scalar_t__ rxfree; struct sk_buff** rxskbs; int irq_num; int txfree; struct sk_buff** txskbs; int timer; int napi; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int rx_desc ;
struct TYPE_2__ {int dev; } ;


 int TSI108_EC_INTMASK ;
 int TSI108_MAC_CFG1 ;
 int TSI108_RXRING_LEN ;
 int TSI108_TXRING_LEN ;
 int TSI_WRITE (int ,int ) ;
 int del_timer_sync (int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct tsi108_prv_data* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int tsi108_kill_phy (struct net_device*) ;
 int tsi108_stop_ethernet (struct net_device*) ;

__attribute__((used)) static int tsi108_close(struct net_device *dev)
{
 struct tsi108_prv_data *data = netdev_priv(dev);

 netif_stop_queue(dev);
 napi_disable(&data->napi);

 del_timer_sync(&data->timer);

 tsi108_stop_ethernet(dev);
 tsi108_kill_phy(dev);
 TSI_WRITE(TSI108_EC_INTMASK, ~0);
 TSI_WRITE(TSI108_MAC_CFG1, 0);



 while (!data->txfree || data->txhead != data->txtail) {
  int tx = data->txtail;
  struct sk_buff *skb;
  skb = data->txskbs[tx];
  data->txtail = (data->txtail + 1) % TSI108_TXRING_LEN;
  data->txfree++;
  dev_kfree_skb(skb);
 }

 free_irq(data->irq_num, dev);



 while (data->rxfree) {
  int rx = data->rxtail;
  struct sk_buff *skb;

  skb = data->rxskbs[rx];
  data->rxtail = (data->rxtail + 1) % TSI108_RXRING_LEN;
  data->rxfree--;
  dev_kfree_skb(skb);
 }

 dma_free_coherent(&data->pdev->dev,
       TSI108_RXRING_LEN * sizeof(rx_desc),
       data->rxring, data->rxdma);
 dma_free_coherent(&data->pdev->dev,
       TSI108_TXRING_LEN * sizeof(tx_desc),
       data->txring, data->txdma);

 return 0;
}
