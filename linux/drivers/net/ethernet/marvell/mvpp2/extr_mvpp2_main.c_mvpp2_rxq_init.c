
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct mvpp2_rx_queue {int size; int descs_dma; int last_desc; int id; int descs; } ;
struct mvpp2_port {int rx_ring_size; TYPE_3__* priv; TYPE_2__* dev; } ;
struct TYPE_8__ {scalar_t__ hw_version; } ;
struct TYPE_6__ {int parent; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MVPP21 ;
 int MVPP22_DESC_ADDR_OFFS ;
 int MVPP2_DESC_ALIGNED_SIZE ;
 int MVPP2_RXQ_DESC_ADDR_REG ;
 int MVPP2_RXQ_DESC_SIZE_REG ;
 int MVPP2_RXQ_INDEX_REG ;
 int MVPP2_RXQ_NUM_REG ;
 int MVPP2_RXQ_STATUS_REG (int) ;
 int NET_SKB_PAD ;
 int dma_alloc_coherent (int ,int,int*,int ) ;
 int get_cpu () ;
 unsigned int mvpp2_cpu_to_thread (TYPE_3__*,int ) ;
 int mvpp2_rx_pkts_coal_set (struct mvpp2_port*,struct mvpp2_rx_queue*) ;
 int mvpp2_rx_time_coal_set (struct mvpp2_port*,struct mvpp2_rx_queue*) ;
 int mvpp2_rxq_offset_set (struct mvpp2_port*,int,int ) ;
 int mvpp2_rxq_status_update (struct mvpp2_port*,int,int ,int) ;
 int mvpp2_thread_write (TYPE_3__*,unsigned int,int ,int) ;
 int mvpp2_write (TYPE_3__*,int ,int ) ;
 int put_cpu () ;

__attribute__((used)) static int mvpp2_rxq_init(struct mvpp2_port *port,
     struct mvpp2_rx_queue *rxq)

{
 unsigned int thread;
 u32 rxq_dma;

 rxq->size = port->rx_ring_size;


 rxq->descs = dma_alloc_coherent(port->dev->dev.parent,
     rxq->size * MVPP2_DESC_ALIGNED_SIZE,
     &rxq->descs_dma, GFP_KERNEL);
 if (!rxq->descs)
  return -ENOMEM;

 rxq->last_desc = rxq->size - 1;


 mvpp2_write(port->priv, MVPP2_RXQ_STATUS_REG(rxq->id), 0);


 thread = mvpp2_cpu_to_thread(port->priv, get_cpu());
 mvpp2_thread_write(port->priv, thread, MVPP2_RXQ_NUM_REG, rxq->id);
 if (port->priv->hw_version == MVPP21)
  rxq_dma = rxq->descs_dma;
 else
  rxq_dma = rxq->descs_dma >> MVPP22_DESC_ADDR_OFFS;
 mvpp2_thread_write(port->priv, thread, MVPP2_RXQ_DESC_ADDR_REG, rxq_dma);
 mvpp2_thread_write(port->priv, thread, MVPP2_RXQ_DESC_SIZE_REG, rxq->size);
 mvpp2_thread_write(port->priv, thread, MVPP2_RXQ_INDEX_REG, 0);
 put_cpu();


 mvpp2_rxq_offset_set(port, rxq->id, NET_SKB_PAD);


 mvpp2_rx_pkts_coal_set(port, rxq);
 mvpp2_rx_time_coal_set(port, rxq);


 mvpp2_rxq_status_update(port, rxq->id, 0, rxq->size);

 return 0;
}
