
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mvpp2_rx_queue {int size; int id; scalar_t__ descs_dma; scalar_t__ next_desc_to_proc; scalar_t__ last_desc; int * descs; } ;
struct mvpp2_port {int priv; TYPE_2__* dev; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int MVPP2_DESC_ALIGNED_SIZE ;
 int MVPP2_RXQ_DESC_ADDR_REG ;
 int MVPP2_RXQ_DESC_SIZE_REG ;
 int MVPP2_RXQ_NUM_REG ;
 int MVPP2_RXQ_STATUS_REG (int ) ;
 int dma_free_coherent (int ,int,int *,scalar_t__) ;
 int get_cpu () ;
 unsigned int mvpp2_cpu_to_thread (int ,int ) ;
 int mvpp2_rxq_drop_pkts (struct mvpp2_port*,struct mvpp2_rx_queue*) ;
 int mvpp2_thread_write (int ,unsigned int,int ,int ) ;
 int mvpp2_write (int ,int ,int ) ;
 int put_cpu () ;

__attribute__((used)) static void mvpp2_rxq_deinit(struct mvpp2_port *port,
        struct mvpp2_rx_queue *rxq)
{
 unsigned int thread;

 mvpp2_rxq_drop_pkts(port, rxq);

 if (rxq->descs)
  dma_free_coherent(port->dev->dev.parent,
      rxq->size * MVPP2_DESC_ALIGNED_SIZE,
      rxq->descs,
      rxq->descs_dma);

 rxq->descs = ((void*)0);
 rxq->last_desc = 0;
 rxq->next_desc_to_proc = 0;
 rxq->descs_dma = 0;




 mvpp2_write(port->priv, MVPP2_RXQ_STATUS_REG(rxq->id), 0);
 thread = mvpp2_cpu_to_thread(port->priv, get_cpu());
 mvpp2_thread_write(port->priv, thread, MVPP2_RXQ_NUM_REG, rxq->id);
 mvpp2_thread_write(port->priv, thread, MVPP2_RXQ_DESC_ADDR_REG, 0);
 mvpp2_thread_write(port->priv, thread, MVPP2_RXQ_DESC_SIZE_REG, 0);
 put_cpu();
}
