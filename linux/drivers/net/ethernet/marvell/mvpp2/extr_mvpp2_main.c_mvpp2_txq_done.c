
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;
struct mvpp2_txq_pcpu {scalar_t__ thread; scalar_t__ count; scalar_t__ wake_threshold; } ;
struct mvpp2_tx_queue {int log_id; } ;
struct mvpp2_port {int dev; int priv; } ;


 scalar_t__ mvpp2_cpu_to_thread (int ,int ) ;
 int mvpp2_txq_bufs_free (struct mvpp2_port*,struct mvpp2_tx_queue*,struct mvpp2_txq_pcpu*,int) ;
 int mvpp2_txq_sent_desc_proc (struct mvpp2_port*,struct mvpp2_tx_queue*) ;
 int netdev_err (int ,char*) ;
 struct netdev_queue* netdev_get_tx_queue (int ,int ) ;
 scalar_t__ netif_tx_queue_stopped (struct netdev_queue*) ;
 int netif_tx_wake_queue (struct netdev_queue*) ;
 int smp_processor_id () ;

__attribute__((used)) static void mvpp2_txq_done(struct mvpp2_port *port, struct mvpp2_tx_queue *txq,
      struct mvpp2_txq_pcpu *txq_pcpu)
{
 struct netdev_queue *nq = netdev_get_tx_queue(port->dev, txq->log_id);
 int tx_done;

 if (txq_pcpu->thread != mvpp2_cpu_to_thread(port->priv, smp_processor_id()))
  netdev_err(port->dev, "wrong cpu on the end of Tx processing\n");

 tx_done = mvpp2_txq_sent_desc_proc(port, txq);
 if (!tx_done)
  return;
 mvpp2_txq_bufs_free(port, txq, txq_pcpu, tx_done);

 txq_pcpu->count -= tx_done;

 if (netif_tx_queue_stopped(nq))
  if (txq_pcpu->count <= txq_pcpu->wake_threshold)
   netif_tx_wake_queue(nq);
}
