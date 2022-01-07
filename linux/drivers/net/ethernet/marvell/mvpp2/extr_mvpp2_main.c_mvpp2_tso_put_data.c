
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tso_t {int data; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct mvpp2_txq_pcpu {int dummy; } ;
struct mvpp2_tx_queue {int id; } ;
struct mvpp2_tx_desc {int dummy; } ;
struct mvpp2_port {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int MVPP2_TXD_L_DESC ;
 int dma_map_single (int ,int ,int,int ) ;
 int dma_mapping_error (int ,int ) ;
 int mvpp2_txdesc_cmd_set (struct mvpp2_port*,struct mvpp2_tx_desc*,int ) ;
 int mvpp2_txdesc_dma_addr_set (struct mvpp2_port*,struct mvpp2_tx_desc*,int ) ;
 int mvpp2_txdesc_size_set (struct mvpp2_port*,struct mvpp2_tx_desc*,int) ;
 int mvpp2_txdesc_txq_set (struct mvpp2_port*,struct mvpp2_tx_desc*,int ) ;
 int mvpp2_txq_desc_put (struct mvpp2_tx_queue*) ;
 int mvpp2_txq_inc_put (struct mvpp2_port*,struct mvpp2_txq_pcpu*,struct sk_buff*,struct mvpp2_tx_desc*) ;
 struct mvpp2_tx_desc* mvpp2_txq_next_desc_get (struct mvpp2_tx_queue*) ;
 struct mvpp2_port* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int mvpp2_tso_put_data(struct sk_buff *skb,
         struct net_device *dev, struct tso_t *tso,
         struct mvpp2_tx_queue *txq,
         struct mvpp2_tx_queue *aggr_txq,
         struct mvpp2_txq_pcpu *txq_pcpu,
         int sz, bool left, bool last)
{
 struct mvpp2_port *port = netdev_priv(dev);
 struct mvpp2_tx_desc *tx_desc = mvpp2_txq_next_desc_get(aggr_txq);
 dma_addr_t buf_dma_addr;

 mvpp2_txdesc_txq_set(port, tx_desc, txq->id);
 mvpp2_txdesc_size_set(port, tx_desc, sz);

 buf_dma_addr = dma_map_single(dev->dev.parent, tso->data, sz,
          DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(dev->dev.parent, buf_dma_addr))) {
  mvpp2_txq_desc_put(txq);
  return -ENOMEM;
 }

 mvpp2_txdesc_dma_addr_set(port, tx_desc, buf_dma_addr);

 if (!left) {
  mvpp2_txdesc_cmd_set(port, tx_desc, MVPP2_TXD_L_DESC);
  if (last) {
   mvpp2_txq_inc_put(port, txq_pcpu, skb, tx_desc);
   return 0;
  }
 } else {
  mvpp2_txdesc_cmd_set(port, tx_desc, 0);
 }

 mvpp2_txq_inc_put(port, txq_pcpu, ((void*)0), tx_desc);
 return 0;
}
